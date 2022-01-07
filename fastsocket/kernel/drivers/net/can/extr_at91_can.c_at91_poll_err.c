
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_1__ stats; int last_rx; } ;
struct can_frame {scalar_t__ can_dlc; } ;


 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int at91_poll_err_frame (struct net_device*,struct can_frame*,int ) ;
 int jiffies ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int at91_poll_err(struct net_device *dev, int quota, u32 reg_sr)
{
 struct sk_buff *skb;
 struct can_frame *cf;

 if (quota == 0)
  return 0;

 skb = alloc_can_err_skb(dev, &cf);
 if (unlikely(!skb))
  return 0;

 at91_poll_err_frame(dev, cf, reg_sr);
 netif_receive_skb(skb);

 dev->last_rx = jiffies;
 dev->stats.rx_packets++;
 dev->stats.rx_bytes += cf->can_dlc;

 return 1;
}
