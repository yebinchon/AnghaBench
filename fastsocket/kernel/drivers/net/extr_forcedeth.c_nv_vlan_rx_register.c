
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct fe_priv {int txrxctl_bits; int lock; struct vlan_group* vlangrp; } ;


 int NVREG_TXRXCTL_VLANINS ;
 int NVREG_TXRXCTL_VLANSTRIP ;
 scalar_t__ NvRegTxRxControl ;
 scalar_t__ get_hwbase (struct net_device*) ;
 struct fe_priv* get_nvpriv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void nv_vlan_rx_register(struct net_device *dev, struct vlan_group *grp)
{
 struct fe_priv *np = get_nvpriv(dev);

 spin_lock_irq(&np->lock);


 np->vlangrp = grp;

 if (grp) {

  np->txrxctl_bits |= NVREG_TXRXCTL_VLANSTRIP | NVREG_TXRXCTL_VLANINS;
 } else {

  np->txrxctl_bits &= ~NVREG_TXRXCTL_VLANSTRIP;
  np->txrxctl_bits &= ~NVREG_TXRXCTL_VLANINS;
 }

 writel(np->txrxctl_bits, get_hwbase(dev) + NvRegTxRxControl);

 spin_unlock_irq(&np->lock);
}
