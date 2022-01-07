
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int state; struct vlan_group* vlgrp; } ;


 int __IXGBE_DOWN ;
 int ixgbe_irq_disable (struct ixgbe_adapter*) ;
 int ixgbe_irq_enable (struct ixgbe_adapter*,int,int) ;
 int ixgbe_vlan_filter_enable (struct ixgbe_adapter*) ;
 int ixgbe_vlan_rx_add_vid (struct net_device*,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_vlan_rx_register(struct net_device *netdev,
       struct vlan_group *grp)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 if (!test_bit(__IXGBE_DOWN, &adapter->state))
  ixgbe_irq_disable(adapter);
 adapter->vlgrp = grp;






 ixgbe_vlan_filter_enable(adapter);

 ixgbe_vlan_rx_add_vid(netdev, 0);

 if (!test_bit(__IXGBE_DOWN, &adapter->state))
  ixgbe_irq_enable(adapter, 1, 1);
}
