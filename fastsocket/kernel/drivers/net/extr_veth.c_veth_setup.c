
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int destructor; int features; int vlan_features; int * ethtool_ops; int * netdev_ops; } ;
struct TYPE_2__ {int ext_priv_flags; } ;


 int IFF_TX_SKB_SHARING ;
 int NETIF_F_LLTX ;
 int VETH_FEATURES ;
 int ether_setup (struct net_device*) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 int veth_dev_free ;
 int veth_ethtool_ops ;
 int veth_netdev_ops ;

__attribute__((used)) static void veth_setup(struct net_device *dev)
{
 ether_setup(dev);

 netdev_extended(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;

 dev->netdev_ops = &veth_netdev_ops;
 dev->ethtool_ops = &veth_ethtool_ops;
 dev->features |= NETIF_F_LLTX;
 dev->features |= VETH_FEATURES;
 dev->vlan_features = dev->features;
 dev->destructor = veth_dev_free;
}
