
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int NETDEV_TX_OK ;
 int mipsnet_put_todevice (struct net_device*,struct sk_buff*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int mipsnet_xmit(struct sk_buff *skb, struct net_device *dev)
{




 netif_stop_queue(dev);
 mipsnet_put_todevice(dev, skb);

 return NETDEV_TX_OK;
}
