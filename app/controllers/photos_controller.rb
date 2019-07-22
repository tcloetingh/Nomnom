class PhotosController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(params[:place_id])
    redirect_to place_path(@place)
  end

private

def photo_params
  params.require(:photo).permit(:picture, :caption)
  end
end