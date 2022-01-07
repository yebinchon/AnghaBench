
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {scalar_t__ pkt_type; struct sock* sk; scalar_t__ len; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int tx_bytes; int tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
typedef int netdev_tx_t ;


 int GFP_ATOMIC ;
 int NETDEV_TX_OK ;
 scalar_t__ PACKET_LOOPBACK ;
 int echo ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 int vcan_rx (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static netdev_tx_t vcan_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct net_device_stats *stats = &dev->stats;
 int loop;

 stats->tx_packets++;
 stats->tx_bytes += skb->len;


 loop = skb->pkt_type == PACKET_LOOPBACK;

 if (!echo) {


  if (loop) {




   stats->rx_packets++;
   stats->rx_bytes += skb->len;
  }
  kfree_skb(skb);
  return NETDEV_TX_OK;
 }



 if (loop) {
  struct sock *srcsk = skb->sk;

  skb = skb_share_check(skb, GFP_ATOMIC);
  if (!skb)
   return NETDEV_TX_OK;


  skb->sk = srcsk;
  vcan_rx(skb, dev);
 } else {

  kfree_skb(skb);
 }
 return NETDEV_TX_OK;
}
