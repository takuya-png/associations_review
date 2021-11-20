Rails.application.routes.draw do
  get 'sessions/new'
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users,only:[:new,:edit,:show,:create]
  resources :favorites, only: [:create, :destroy]
end
