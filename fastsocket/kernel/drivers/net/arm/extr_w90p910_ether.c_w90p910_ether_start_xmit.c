
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {struct sk_buff* skb; } ;
struct sk_buff {int len; int data; } ;
struct net_device {int dummy; } ;


 int EAGAIN ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;
 int w90p910_send_frame (struct net_device*,int ,int ) ;

__attribute__((used)) static int w90p910_ether_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct w90p910_ether *ether = netdev_priv(dev);

 if (!(w90p910_send_frame(dev, skb->data, skb->len))) {
  ether->skb = skb;
  dev_kfree_skb_irq(skb);
  return 0;
 }
 return -EAGAIN;
}
