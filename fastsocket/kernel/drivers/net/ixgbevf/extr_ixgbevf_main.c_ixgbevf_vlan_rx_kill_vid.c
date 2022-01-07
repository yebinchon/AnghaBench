
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
struct ixgbevf_adapter {int mbx_lock; int state; int vlgrp; struct ixgbe_hw hw; } ;


 int __IXGBEVF_DOWN ;
 int ixgbevf_irq_disable (struct ixgbevf_adapter*) ;
 int ixgbevf_irq_enable (struct ixgbevf_adapter*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int) ;
 int test_bit (int ,int *) ;
 int vlan_group_set_device (int ,int ,int *) ;

__attribute__((used)) static void ixgbevf_vlan_rx_kill_vid(struct net_device *netdev, u16 vid)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 if (!test_bit(__IXGBEVF_DOWN, &adapter->state))
  ixgbevf_irq_disable(adapter);

 vlan_group_set_device(adapter->vlgrp, vid, ((void*)0));

 if (!test_bit(__IXGBEVF_DOWN, &adapter->state))
  ixgbevf_irq_enable(adapter);

 spin_lock_bh(&adapter->mbx_lock);


 hw->mac.ops.set_vfta(hw, vid, 0, 0);

 spin_unlock_bh(&adapter->mbx_lock);
}
