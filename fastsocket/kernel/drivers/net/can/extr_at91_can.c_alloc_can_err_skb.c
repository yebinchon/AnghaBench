
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_dlc; int can_id; } ;


 int CAN_ERR_DLC ;
 int CAN_ERR_FLAG ;
 struct sk_buff* alloc_can_skb (struct net_device*,struct can_frame**) ;
 int memset (struct can_frame*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *alloc_can_err_skb(struct net_device *dev,
  struct can_frame **cf)
{
 struct sk_buff *skb;

 skb = alloc_can_skb(dev, cf);
 if (unlikely(!skb))
  return ((void*)0);

 memset(*cf, 0, sizeof(struct can_frame));
 (*cf)->can_id = CAN_ERR_FLAG;
 (*cf)->can_dlc = CAN_ERR_DLC;

 return skb;
}
