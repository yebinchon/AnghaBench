
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int chan; } ;


 TYPE_1__* dev_to_chan (struct net_device*) ;
 int z8530_queue_xmit (int ,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t sealevel_queue_xmit(struct sk_buff *skb,
          struct net_device *d)
{
 return z8530_queue_xmit(dev_to_chan(d)->chan, skb);
}
