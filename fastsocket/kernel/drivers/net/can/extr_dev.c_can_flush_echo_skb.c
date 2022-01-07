
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int tx_aborted_errors; int tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_priv {int ** echo_skb; } ;


 int CAN_ECHO_SKB_MAX ;
 int kfree_skb (int *) ;
 struct can_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void can_flush_echo_skb(struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 int i;

 for (i = 0; i < CAN_ECHO_SKB_MAX; i++) {
  if (priv->echo_skb[i]) {
   kfree_skb(priv->echo_skb[i]);
   priv->echo_skb[i] = ((void*)0);
   stats->tx_dropped++;
   stats->tx_aborted_errors++;
  }
 }
}
