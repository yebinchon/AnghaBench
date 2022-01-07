
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; int data; } ;
struct TYPE_2__ {unsigned int tx_bytes; int tx_packets; } ;
struct simeth_local {int simfd; TYPE_1__ stats; } ;
struct net_device {int dummy; } ;


 unsigned int ETH_ZLEN ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int frame_print (char*,int ,unsigned int) ;
 struct simeth_local* netdev_priv (struct net_device*) ;
 int netdev_send (int ,int ,unsigned int) ;
 int simeth_debug ;

__attribute__((used)) static int
simeth_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct simeth_local *local = netdev_priv(dev);
 unsigned int length = skb->len;


 local->stats.tx_bytes += skb->len;
 local->stats.tx_packets++;


 if (simeth_debug > 5) frame_print("simeth_tx", skb->data, length);

 netdev_send(local->simfd, skb->data, length);






 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
