require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  organized_hash = {}
  attribute_array = []
  data.each_key do |attribute_key|
    #attribute_key will be :color, :gender, or :lives
    attribute_array.push(attribute_key)
    
    data[attribute_key].each_key do |subattribute_key|
      
      
      data[attribute_key][subattribute_key].each do |name|
        
        if !organized_hash[name]
          organized_hash[name]={}
          organized_hash[name][attribute_key]=[subattribute_key.to_s]
        elsif !organized_hash[name][attribute_key]
          
          organized_hash[name][attribute_key]=[subattribute_key.to_s]
        else
          organized_hash[name][attribute_key].push(subattribute_key.to_s)
        end
          
        
      end
      
      
    end
    
  end
  
  organized_hash
end
