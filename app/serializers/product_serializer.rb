class ProductSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id

  has_many :widgets

  def widgets
    Widget.all
  end
end
