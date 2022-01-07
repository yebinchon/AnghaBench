
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* xmit ) (struct sk_buff*,struct net_device*) ;} ;
typedef TYPE_1__ hdlc_device ;


 TYPE_1__* dev_to_hdlc (struct net_device*) ;
 int stub1 (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static void x25_data_transmit(struct net_device *dev, struct sk_buff *skb)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);
 hdlc->xmit(skb, dev);
}
