
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int state; struct vlan_group* vlgrp; struct e1000_hw hw; } ;


 int E1000_CTRL ;
 int E1000_CTRL_VME ;
 int E1000_RCTL ;
 int E1000_RCTL_CFIEN ;
 int __IGB_DOWN ;
 int igb_irq_disable (struct igb_adapter*) ;
 int igb_irq_enable (struct igb_adapter*) ;
 int igb_rlpml_set (struct igb_adapter*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int rd32 (int ) ;
 int test_bit (int ,int *) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static void igb_vlan_rx_register(struct net_device *netdev,
     struct vlan_group *grp)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl, rctl;

 igb_irq_disable(adapter);
 adapter->vlgrp = grp;

 if (grp) {

  ctrl = rd32(E1000_CTRL);
  ctrl |= E1000_CTRL_VME;
  wr32(E1000_CTRL, ctrl);


  rctl = rd32(E1000_RCTL);
  rctl &= ~E1000_RCTL_CFIEN;
  wr32(E1000_RCTL, rctl);
 } else {

  ctrl = rd32(E1000_CTRL);
  ctrl &= ~E1000_CTRL_VME;
  wr32(E1000_CTRL, ctrl);
 }

 igb_rlpml_set(adapter);

 if (!test_bit(__IGB_DOWN, &adapter->state))
  igb_irq_enable(adapter);
}
