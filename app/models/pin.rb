class Pin < ActiveRecord::Base
	#attr_accessor :image_file_name
	belongs_to :user
	has_attached_file :image , :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	validates :description, presence: true	
	validates :image, presence: true


end
 