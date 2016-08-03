#Takes string text t, and shift integer s, spits out new text
def shift(t, s)
	newWord = ""

	t.each_char do |c|

		shiftedCharacterInteger = c.ord + s

		if c.ord <= 90 #Character is uppercase
			
			if shiftedCharacterInteger > 90
				shiftedCharacterInteger -= 26
			elsif shiftedCharacterInteger < 65
				shiftedCharacterInteger += 26
			end

		else #Character is lowercase

			if shiftedCharacterInteger > 122
				shiftedCharacterInteger -= 26
			elsif shiftedCharacterInteger < 97
				shiftedCharacterInteger +=26
			end
		end
		
		newCharacter = shiftedCharacterInteger.chr
		newWord += newCharacter

	end

	return newWord
end

puts shift("test", 2)
puts shift("z", 3)
puts shift("ABCabc", 2)
