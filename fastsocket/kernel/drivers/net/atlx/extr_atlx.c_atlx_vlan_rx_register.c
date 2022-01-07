
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct atlx_adapter {int lock; TYPE_1__ hw; struct vlan_group* vlgrp; } ;


 int MAC_CTRL_RMV_VLAN ;
 scalar_t__ REG_MAC_CTRL ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 struct atlx_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atlx_vlan_rx_register(struct net_device *netdev,
 struct vlan_group *grp)
{
 struct atlx_adapter *adapter = netdev_priv(netdev);
 unsigned long flags;
 u32 ctrl;

 spin_lock_irqsave(&adapter->lock, flags);

 adapter->vlgrp = grp;

 if (grp) {

  ctrl = ioread32(adapter->hw.hw_addr + REG_MAC_CTRL);
  ctrl |= MAC_CTRL_RMV_VLAN;
  iowrite32(ctrl, adapter->hw.hw_addr + REG_MAC_CTRL);
 } else {

  ctrl = ioread32(adapter->hw.hw_addr + REG_MAC_CTRL);
  ctrl &= ~MAC_CTRL_RMV_VLAN;
  iowrite32(ctrl, adapter->hw.hw_addr + REG_MAC_CTRL);
 }


 spin_unlock_irqrestore(&adapter->lock, flags);
}
