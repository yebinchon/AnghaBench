
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;
struct netdev_queue {unsigned int tx_bytes; int tx_dropped; int tx_packets; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int NET_XMIT_SUCCESS ;
 scalar_t__ likely (int) ;
 int macvlan_queue_xmit (struct sk_buff*,struct net_device*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int) ;
 int skb_get_queue_mapping (struct sk_buff*) ;

netdev_tx_t macvlan_start_xmit(struct sk_buff *skb,
          struct net_device *dev)
{
 int i = skb_get_queue_mapping(skb);
 struct netdev_queue *txq = netdev_get_tx_queue(dev, i);
 unsigned int len = skb->len;
 int ret;

 ret = macvlan_queue_xmit(skb, dev);
 if (likely(ret == NET_XMIT_SUCCESS)) {
  txq->tx_packets++;
  txq->tx_bytes += len;
 } else
  txq->tx_dropped++;

 return NETDEV_TX_OK;
}
