
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct netxen_adapter {struct vlan_group* vlgrp; } ;
struct net_device {int dummy; } ;


 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void netxen_vlan_rx_register(struct net_device *netdev,
    struct vlan_group *grp)
{
 struct netxen_adapter *adapter = netdev_priv(netdev);
 adapter->vlgrp = grp;
}
