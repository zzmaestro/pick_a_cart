if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# ��������� ���ᨢ � ����஬ ���⮨���
values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

# �������� ���ᨢ � ����஬ ���⥩.
# �㡨, �ࢨ, ����, ����.
suits = ["Diamonds", "Hearts", "Clubs", "Spades"]

# �뢥��� �ந������� �����, ��ࠢ �� ������ ������ �� ���ᨢ��
puts "#{values.sample} of #{suits.sample}"