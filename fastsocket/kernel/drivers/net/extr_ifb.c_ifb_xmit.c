
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int iif; scalar_t__ len; int tc_verd; } ;
struct net_device_stats {int rx_dropped; int rx_bytes; int rx_packets; } ;
struct net_device {scalar_t__ tx_queue_len; int trans_start; struct net_device_stats stats; } ;
struct ifb_private {int tasklet_pending; int ifb_tasklet; int rq; } ;
typedef int netdev_tx_t ;


 int AT_EGRESS ;
 int AT_INGRESS ;
 int G_TC_FROM (int ) ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int jiffies ;
 struct ifb_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static netdev_tx_t ifb_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct ifb_private *dp = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 u32 from = G_TC_FROM(skb->tc_verd);

 stats->rx_packets++;
 stats->rx_bytes+=skb->len;

 if (!(from & (AT_INGRESS|AT_EGRESS)) || !skb->iif) {
  dev_kfree_skb(skb);
  stats->rx_dropped++;
  return NETDEV_TX_OK;
 }

 if (skb_queue_len(&dp->rq) >= dev->tx_queue_len) {
  netif_stop_queue(dev);
 }

 dev->trans_start = jiffies;
 skb_queue_tail(&dp->rq, skb);
 if (!dp->tasklet_pending) {
  dp->tasklet_pending = 1;
  tasklet_schedule(&dp->ifb_tasklet);
 }

 return NETDEV_TX_OK;
}
