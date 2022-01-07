
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct hdlc_device {TYPE_1__* proto; } ;
struct TYPE_2__ {int (* netif_rx ) (struct sk_buff*) ;} ;


 int BUG_ON (int) ;
 int * dev_net (struct net_device*) ;
 struct hdlc_device* dev_to_hdlc (struct net_device*) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int hdlc_rcv(struct sk_buff *skb, struct net_device *dev,
      struct packet_type *p, struct net_device *orig_dev)
{
 struct hdlc_device *hdlc = dev_to_hdlc(dev);

 if (dev_net(dev) != &init_net) {
  kfree_skb(skb);
  return 0;
 }

 BUG_ON(!hdlc->proto->netif_rx);
 return hdlc->proto->netif_rx(skb);
}
