
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct gfar_private {scalar_t__ rx_buffer_size; int rx_recycle; } ;


 int RXBUF_ALIGNMENT ;
 struct sk_buff* __skb_dequeue (int *) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;

struct sk_buff * gfar_new_skb(struct net_device *dev)
{
 unsigned int alignamount;
 struct gfar_private *priv = netdev_priv(dev);
 struct sk_buff *skb = ((void*)0);

 skb = __skb_dequeue(&priv->rx_recycle);
 if (!skb)
  skb = netdev_alloc_skb(dev,
    priv->rx_buffer_size + RXBUF_ALIGNMENT);

 if (!skb)
  return ((void*)0);

 alignamount = RXBUF_ALIGNMENT -
  (((unsigned long) skb->data) & (RXBUF_ALIGNMENT - 1));




 skb_reserve(skb, alignamount);

 return skb;
}
