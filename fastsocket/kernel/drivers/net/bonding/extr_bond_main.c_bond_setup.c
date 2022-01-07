
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; int features; int priv_flags; scalar_t__ tx_queue_len; int destructor; int * ethtool_ops; int * netdev_ops; } ;
struct TYPE_4__ {scalar_t__ arp_interval; int mode; } ;
struct bonding {TYPE_2__ params; int vlan_list; struct net_device* dev; int curr_slave_lock; int lock; } ;
struct TYPE_3__ {int ext_priv_flags; } ;


 int IFF_BONDING ;
 int IFF_MASTER ;
 int IFF_MASTER_ARPMON ;
 int IFF_MULTICAST ;
 int IFF_TX_SKB_SHARING ;
 int IFF_XMIT_DST_RELEASE ;
 int INIT_LIST_HEAD (int *) ;
 int NETIF_F_GRO ;
 int NETIF_F_HW_VLAN_FILTER ;
 int NETIF_F_HW_VLAN_RX ;
 int NETIF_F_HW_VLAN_TX ;
 int NETIF_F_LLTX ;
 int NETIF_F_LRO ;
 int NETIF_F_VLAN_CHALLENGED ;
 int bond_destructor ;
 int bond_ethtool_ops ;
 int bond_netdev_ops ;
 int bond_set_mode_ops (struct bonding*,int ) ;
 TYPE_2__ bonding_defaults ;
 int ether_setup (struct net_device*) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int rwlock_init (int *) ;

__attribute__((used)) static void bond_setup(struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);


 rwlock_init(&bond->lock);
 rwlock_init(&bond->curr_slave_lock);

 bond->params = bonding_defaults;


 bond->dev = bond_dev;
 INIT_LIST_HEAD(&bond->vlan_list);


 ether_setup(bond_dev);
 bond_dev->netdev_ops = &bond_netdev_ops;
 bond_dev->ethtool_ops = &bond_ethtool_ops;
 bond_set_mode_ops(bond, bond->params.mode);

 bond_dev->destructor = bond_destructor;


 bond_dev->tx_queue_len = 0;
 bond_dev->flags |= IFF_MASTER|IFF_MULTICAST;
 bond_dev->priv_flags |= IFF_BONDING;
 bond_dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
 netdev_extended(bond_dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;

 if (bond->params.arp_interval)
  bond_dev->priv_flags |= IFF_MASTER_ARPMON;






 bond_dev->features |= NETIF_F_VLAN_CHALLENGED;



 bond_dev->features |= NETIF_F_LLTX;




 bond_dev->features |= NETIF_F_LRO;







 bond_dev->features |= (NETIF_F_HW_VLAN_TX |
          NETIF_F_HW_VLAN_RX |
          NETIF_F_HW_VLAN_FILTER);




 bond_dev->features |= NETIF_F_GRO;
}
