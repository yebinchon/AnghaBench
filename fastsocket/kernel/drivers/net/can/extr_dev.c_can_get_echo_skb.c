
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_priv {int ** echo_skb; } ;


 struct can_priv* netdev_priv (struct net_device*) ;
 int netif_rx (int *) ;

void can_get_echo_skb(struct net_device *dev, int idx)
{
 struct can_priv *priv = netdev_priv(dev);

 if (priv->echo_skb[idx]) {
  netif_rx(priv->echo_skb[idx]);
  priv->echo_skb[idx] = ((void*)0);
 }
}
