
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int NETDEV_TX_OK ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int c2_pseudo_xmit_frame(struct sk_buff *skb, struct net_device *netdev)
{
 kfree_skb(skb);
 return NETDEV_TX_OK;
}
