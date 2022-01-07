
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static inline void ipoib_cm_skb_too_long(struct net_device *dev, struct sk_buff *skb,
      unsigned int mtu)
{
 dev_kfree_skb_any(skb);
}
