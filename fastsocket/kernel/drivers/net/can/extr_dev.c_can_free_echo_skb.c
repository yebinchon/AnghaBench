
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_priv {int ** echo_skb; } ;


 int kfree_skb (int *) ;
 struct can_priv* netdev_priv (struct net_device*) ;

void can_free_echo_skb(struct net_device *dev, int idx)
{
 struct can_priv *priv = netdev_priv(dev);

 if (priv->echo_skb[idx]) {
  kfree_skb(priv->echo_skb[idx]);
  priv->echo_skb[idx] = ((void*)0);
 }
}
