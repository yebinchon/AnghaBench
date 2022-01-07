
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* set_vfta ) (struct ixgbe_hw*,int ,int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; int state; int vlgrp; } ;


 int VMDQ_P (int ) ;
 int __IXGBE_DOWN ;
 int ixgbe_irq_disable (struct ixgbe_adapter*) ;
 int ixgbe_irq_enable (struct ixgbe_adapter*,int,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int) ;
 int test_bit (int ,int *) ;
 int vlan_group_set_device (int ,int ,int *) ;

__attribute__((used)) static void ixgbe_vlan_rx_kill_vid(struct net_device *netdev, u16 vid)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 if (!test_bit(__IXGBE_DOWN, &adapter->state))
  ixgbe_irq_disable(adapter);

 vlan_group_set_device(adapter->vlgrp, vid, ((void*)0));

 if (!test_bit(__IXGBE_DOWN, &adapter->state))
  ixgbe_irq_enable(adapter, 1, 1);


 hw->mac.ops.set_vfta(&adapter->hw, vid, VMDQ_P(0), 0);
}
