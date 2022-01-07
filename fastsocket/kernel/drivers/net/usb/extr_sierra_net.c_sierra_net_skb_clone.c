
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {TYPE_2__* net; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int rx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int GFP_ATOMIC ;
 int netdev_err (TYPE_2__*,char*) ;
 scalar_t__ netif_msg_rx_err (struct usbnet*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *sierra_net_skb_clone(struct usbnet *dev,
  struct sk_buff *skb, int len)
{
 struct sk_buff *new_skb;


 new_skb = skb_clone(skb, GFP_ATOMIC);


 skb_pull(skb, len);


 if (new_skb) {
  skb_trim(new_skb, len);
 } else {
  if (netif_msg_rx_err(dev))
   netdev_err(dev->net, "failed to get skb\n");
  dev->net->stats.rx_dropped++;
 }

 return new_skb;
}
