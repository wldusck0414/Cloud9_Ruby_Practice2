class HomeController < ApplicationController
    def index
    end
    
    def create
        @post=Post.new
        @post.title=params[:title_of_post]
        @post.content=params[:textarea_of_post]
        @post.pic=params[:picture]
        @post.save
        
        redirect_to '/home/read'
    end
    
    def read
        @post=Post.all
    end
    
    def update
        @post=Post.find(params[:id])
    end
    
    def delete
        @post=Post.find(params[:id])
        @post.destroy
        
        redirect_to :back
    end
    
    def edit
        @post=Post.find(params[:id])
        @post.title=params[:title_of_post]
        @post.content=params[:textarea_of_post]
        @post.pic=params[:picture]
        @post.save
         
        redirect_to '/home/read'
    end
    
    def main
    end
end
