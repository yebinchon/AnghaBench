
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vlan_group {int dummy; } ;
struct net_device {int mtu; } ;
struct gfar_private {int rxlock; TYPE_1__* regs; struct vlan_group* vlgrp; } ;
struct TYPE_2__ {int rctrl; int tctrl; } ;


 int RCTRL_PRSDEP_INIT ;
 int RCTRL_REQ_PARSER ;
 int RCTRL_VLEX ;
 int TCTRL_VLINS ;
 int gfar_change_mtu (struct net_device*,int ) ;
 int gfar_read (int *) ;
 int gfar_write (int *,int) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gfar_vlan_rx_register(struct net_device *dev,
  struct vlan_group *grp)
{
 struct gfar_private *priv = netdev_priv(dev);
 unsigned long flags;
 u32 tempval;

 spin_lock_irqsave(&priv->rxlock, flags);

 priv->vlgrp = grp;

 if (grp) {

  tempval = gfar_read(&priv->regs->tctrl);
  tempval |= TCTRL_VLINS;

  gfar_write(&priv->regs->tctrl, tempval);


  tempval = gfar_read(&priv->regs->rctrl);
  tempval |= (RCTRL_VLEX | RCTRL_PRSDEP_INIT);
  gfar_write(&priv->regs->rctrl, tempval);
 } else {

  tempval = gfar_read(&priv->regs->tctrl);
  tempval &= ~TCTRL_VLINS;
  gfar_write(&priv->regs->tctrl, tempval);


  tempval = gfar_read(&priv->regs->rctrl);
  tempval &= ~RCTRL_VLEX;

  if (tempval & RCTRL_REQ_PARSER)
   tempval |= RCTRL_PRSDEP_INIT;
  else
   tempval &= ~RCTRL_PRSDEP_INIT;
  gfar_write(&priv->regs->rctrl, tempval);
 }

 gfar_change_mtu(dev, dev->mtu);

 spin_unlock_irqrestore(&priv->rxlock, flags);
}
