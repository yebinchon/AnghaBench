
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int rcu; int hlist; scalar_t__ nr_vlans; } ;
struct net_device_ops {int (* ndo_vlan_rx_register ) (struct net_device*,int *) ;} ;
struct net_device {int features; struct net_device_ops* netdev_ops; } ;


 int NETIF_F_HW_VLAN_RX ;
 int bond_vlan_rcu_free ;
 int call_rcu (int *,int ) ;
 int hlist_del_rcu (int *) ;
 int stub1 (struct net_device*,int *) ;
 struct vlan_group* vlan_find_group (struct net_device*) ;
 int vlan_gvrp_uninit_applicant (struct net_device*) ;

__attribute__((used)) static void bond_vlan_del_empty_slave_group(struct net_device *sdev)
{
 const struct net_device_ops *slave_ops = sdev->netdev_ops;
 struct vlan_group *sgrp;

 sgrp = vlan_find_group(sdev);
 if (!sgrp || sgrp->nr_vlans)
  return;

 vlan_gvrp_uninit_applicant(sdev);

 if ((sdev->features & NETIF_F_HW_VLAN_RX) &&
     slave_ops->ndo_vlan_rx_register)
  slave_ops->ndo_vlan_rx_register(sdev, ((void*)0));

 hlist_del_rcu(&sgrp->hlist);

 call_rcu(&sgrp->rcu, bond_vlan_rcu_free);
}
