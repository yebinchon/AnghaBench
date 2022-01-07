
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev_addr; int priv_flags; int flags; int tx_queue_len; int * netdev_ops; int destructor; } ;
struct TYPE_2__ {int ext_priv_flags; } ;


 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_TX_SKB_SHARING ;
 int IFF_XMIT_DST_RELEASE ;
 int TX_Q_LIMIT ;
 int ether_setup (struct net_device*) ;
 int free_netdev ;
 int ifb_netdev_ops ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 int random_ether_addr (int ) ;

__attribute__((used)) static void ifb_setup(struct net_device *dev)
{

 dev->destructor = free_netdev;
 dev->netdev_ops = &ifb_netdev_ops;


 ether_setup(dev);
 dev->tx_queue_len = TX_Q_LIMIT;

 dev->flags |= IFF_NOARP;
 dev->flags &= ~IFF_MULTICAST;
 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
 netdev_extended(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;
 random_ether_addr(dev->dev_addr);
}
