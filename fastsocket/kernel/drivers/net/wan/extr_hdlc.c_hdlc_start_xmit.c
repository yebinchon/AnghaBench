
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_5__ {int (* xmit ) (struct sk_buff*,struct net_device*) ;TYPE_1__* proto; } ;
typedef TYPE_2__ hdlc_device ;
struct TYPE_4__ {int (* xmit ) (struct sk_buff*,struct net_device*) ;} ;


 TYPE_2__* dev_to_hdlc (struct net_device*) ;
 int stub1 (struct sk_buff*,struct net_device*) ;
 int stub2 (struct sk_buff*,struct net_device*) ;

netdev_tx_t hdlc_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);

 if (hdlc->proto->xmit)
  return hdlc->proto->xmit(skb, dev);

 return hdlc->xmit(skb, dev);
}
