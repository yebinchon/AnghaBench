
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; int protocol; } ;
struct net_device {int dummy; } ;
struct can_frame {int dummy; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_CAN ;
 int htons (int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *alloc_can_skb(struct net_device *dev,
  struct can_frame **cf)
{
 struct sk_buff *skb;

 skb = netdev_alloc_skb(dev, sizeof(struct can_frame));
 if (unlikely(!skb))
  return ((void*)0);

 skb->protocol = htons(ETH_P_CAN);
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 *cf = (struct can_frame *)skb_put(skb, sizeof(struct can_frame));

 return skb;
}
