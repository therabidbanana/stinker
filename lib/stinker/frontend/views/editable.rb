module MyPrecious
  module Editable
    def formats(selected = @page.format)
      Stinker::Page::FORMAT_NAMES.map do |key, val|
        { :name     => val,
          :id       => key.to_s,
          :selected => selected == key}
      end.sort do |a, b|
        a[:name].downcase <=> b[:name].downcase
      end
    end
  end
end
