
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; struct net_device* dev; int pkt_type; int protocol; scalar_t__ len; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_CAN ;
 int PACKET_BROADCAST ;
 int htons (int ) ;
 int netif_rx_ni (struct sk_buff*) ;

__attribute__((used)) static void vcan_rx(struct sk_buff *skb, struct net_device *dev)
{
 struct net_device_stats *stats = &dev->stats;

 stats->rx_packets++;
 stats->rx_bytes += skb->len;

 skb->protocol = htons(ETH_P_CAN);
 skb->pkt_type = PACKET_BROADCAST;
 skb->dev = dev;
 skb->ip_summed = CHECKSUM_UNNECESSARY;

 netif_rx_ni(skb);
}
