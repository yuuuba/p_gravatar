Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get "users/:id", to: "users#show"
  get "mypage", to: "users#mypage"
end
