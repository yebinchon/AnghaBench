
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int * ethtool_ops; int * header_ops; int destructor; int * netdev_ops; int priv_flags; } ;
struct TYPE_2__ {int ext_priv_flags; } ;


 int IFF_TX_SKB_SHARING ;
 int IFF_XMIT_DST_RELEASE ;
 int ether_setup (struct net_device*) ;
 int free_netdev ;
 int macvlan_ethtool_ops ;
 int macvlan_hard_header_ops ;
 int macvlan_netdev_ops ;
 TYPE_1__* netdev_extended (struct net_device*) ;

void macvlan_common_setup(struct net_device *dev)
{
 ether_setup(dev);

 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
 netdev_extended(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->netdev_ops = &macvlan_netdev_ops;
 dev->destructor = free_netdev;
 dev->header_ops = &macvlan_hard_header_ops,
 dev->ethtool_ops = &macvlan_ethtool_ops;
}
