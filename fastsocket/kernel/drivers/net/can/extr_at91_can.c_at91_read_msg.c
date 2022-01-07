
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {scalar_t__ can_dlc; } ;


 struct sk_buff* alloc_can_skb (struct net_device*,struct can_frame**) ;
 int at91_read_mb (struct net_device*,unsigned int,struct can_frame*) ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void at91_read_msg(struct net_device *dev, unsigned int mb)
{
 struct net_device_stats *stats = &dev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;

 skb = alloc_can_skb(dev, &cf);
 if (unlikely(!skb)) {
  stats->rx_dropped++;
  return;
 }

 at91_read_mb(dev, mb, cf);
 netif_receive_skb(skb);

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
}
