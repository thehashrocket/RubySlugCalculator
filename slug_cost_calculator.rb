class CostCalculator

    def initialize(slug)
        @cost = 0
        @vowels = %w[a e i o u]
    end

    def cost_calculator(slug)
        return 0 if slug.blank?
        
        slug.split("").each_with_index do |l, i|
            if has_it_happened_before(slug, l, i)
                @cost = @vowels.include?(l) ? @cost + 3 : @cost + 2
                next
            end

            @cost = @vowels.include?(l) ? @cost + 2 : @cost + 1
        end
        puts "The cost of #{slug} is #{@cost}"
    end

    def has_it_happened_before(slug, letter, index)
        slug.split("").find_index(letter) < index
    end

    def run(slug)
        cost_calculator(slug)
    end
end
