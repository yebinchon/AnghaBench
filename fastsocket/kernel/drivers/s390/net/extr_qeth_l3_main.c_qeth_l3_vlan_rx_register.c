
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct qeth_card {int vlanlock; struct vlan_group* vlangrp; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qeth_l3_vlan_rx_register(struct net_device *dev,
   struct vlan_group *grp)
{
 struct qeth_card *card = dev->ml_priv;
 unsigned long flags;

 QETH_DBF_TEXT(TRACE, 4, "vlanreg");
 spin_lock_irqsave(&card->vlanlock, flags);
 card->vlangrp = grp;
 spin_unlock_irqrestore(&card->vlanlock, flags);
}
