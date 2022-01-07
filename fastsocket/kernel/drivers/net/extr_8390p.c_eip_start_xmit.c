
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int __ei_start_xmit (struct sk_buff*,struct net_device*) ;

netdev_tx_t eip_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 return __ei_start_xmit(skb, dev);
}
