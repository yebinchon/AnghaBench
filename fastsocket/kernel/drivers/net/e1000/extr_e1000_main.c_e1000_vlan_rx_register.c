
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct vlan_group {int dummy; } ;
struct net_device {int flags; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {scalar_t__ mng_vlan_id; int flags; struct vlan_group* vlgrp; struct e1000_hw hw; } ;


 int CTRL ;
 int E1000_CTRL_VME ;
 scalar_t__ E1000_MNG_VLAN_NONE ;
 int E1000_RCTL_CFIEN ;
 int E1000_RCTL_VFE ;
 int IFF_PROMISC ;
 int RCTL ;
 int __E1000_DOWN ;
 int e1000_irq_disable (struct e1000_adapter*) ;
 int e1000_irq_enable (struct e1000_adapter*) ;
 int e1000_update_mng_vlan (struct e1000_adapter*) ;
 int e1000_vlan_rx_kill_vid (struct net_device*,scalar_t__) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void e1000_vlan_rx_register(struct net_device *netdev,
       struct vlan_group *grp)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl, rctl;

 if (!test_bit(__E1000_DOWN, &adapter->flags))
  e1000_irq_disable(adapter);
 adapter->vlgrp = grp;

 if (grp) {

  ctrl = er32(CTRL);
  ctrl |= E1000_CTRL_VME;
  ew32(CTRL, ctrl);


  rctl = er32(RCTL);
  rctl &= ~E1000_RCTL_CFIEN;
  if (!(netdev->flags & IFF_PROMISC))
   rctl |= E1000_RCTL_VFE;
  ew32(RCTL, rctl);
  e1000_update_mng_vlan(adapter);
 } else {

  ctrl = er32(CTRL);
  ctrl &= ~E1000_CTRL_VME;
  ew32(CTRL, ctrl);


  rctl = er32(RCTL);
  rctl &= ~E1000_RCTL_VFE;
  ew32(RCTL, rctl);

  if (adapter->mng_vlan_id != (u16)E1000_MNG_VLAN_NONE) {
   e1000_vlan_rx_kill_vid(netdev, adapter->mng_vlan_id);
   adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
  }
 }

 if (!test_bit(__E1000_DOWN, &adapter->flags))
  e1000_irq_enable(adapter);
}
