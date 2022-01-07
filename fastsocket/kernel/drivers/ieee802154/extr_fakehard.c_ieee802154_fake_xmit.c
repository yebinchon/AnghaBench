
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t ieee802154_fake_xmit(struct sk_buff *skb,
           struct net_device *dev)
{
 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;



 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
