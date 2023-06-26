Rails.application.routes.draw do
  root "blogs#index"
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end