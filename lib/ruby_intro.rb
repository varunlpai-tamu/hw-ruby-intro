# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	# YOUR CODE HERE
	return arr.sum
end


def max_2_sum arr
	# YOUR CODE HERE
	if arr.length() == 0
		return 0
	elsif arr.length() == 1
		return arr[0]
	else
		arr = arr.sort.reverse
		return arr[0] + arr[1]
	end
end


def sum_to_n? arr, n
	# YOUR CODE HERE
	if arr.length() > 1
		list = arr.combination(2).to_a
		for i in 0...list.length() do
			if list[i].sum == n
				return true
			end
		end
	end
	return false
end



# Part 2

def hello(name)
	# YOUR CODE HERE
	return "Hello, " + name
end


def starts_with_consonant? s
	# YOUR CODE HERE
	vowel = "aeiou"
	s = s.downcase
	if s.length() > 0 and s[0].match?(/[[:alpha:]]/)
		if vowel.include? s[0]
			return false
		else
			return true
		end
	end
	return false
end


def binary_multiple_of_4? s
	# YOUR CODE HERE
	if s !~ /[^01]/
		length = s.length()
		if length > 2 and s[length-1] == "0" and s[length-2] == "0"
			return true
		elsif length == 1 and s[0] == "0"
			return true
		end
	end
	return false
end



# Part 3

class BookInStock
	# YOUR CODE HERE
	def initialize(isbn, price)
		raise ArgumentError.new() if isbn.length() == 0 or price <= 0
		@isbn = isbn
		@price = price
	end

	def isbn
		@isbn
	end

	def isbn=(isbn)
		@isbn = isbn
	end

	def price
		@price
	end

	def price=(price)
		@price = price
	end

	def price_as_string
		return "$#{'%.2f' % @price}"
	end
end
