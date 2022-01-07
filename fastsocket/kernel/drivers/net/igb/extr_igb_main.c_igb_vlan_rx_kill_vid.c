
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; int state; int vlgrp; struct e1000_hw hw; } ;
typedef scalar_t__ s32 ;


 int __IGB_DOWN ;
 int igb_irq_disable (struct igb_adapter*) ;
 int igb_irq_enable (struct igb_adapter*) ;
 int igb_vfta_set (struct e1000_hw*,int ,int) ;
 scalar_t__ igb_vlvf_set (struct igb_adapter*,int ,int,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;
 int vlan_group_set_device (int ,int ,int *) ;

__attribute__((used)) static void igb_vlan_rx_kill_vid(struct net_device *netdev, u16 vid)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 int pf_id = adapter->vfs_allocated_count;
 s32 err;

 igb_irq_disable(adapter);
 vlan_group_set_device(adapter->vlgrp, vid, ((void*)0));

 if (!test_bit(__IGB_DOWN, &adapter->state))
  igb_irq_enable(adapter);


 err = igb_vlvf_set(adapter, vid, 0, pf_id);


 if (err)
  igb_vfta_set(hw, vid, 0);
}
