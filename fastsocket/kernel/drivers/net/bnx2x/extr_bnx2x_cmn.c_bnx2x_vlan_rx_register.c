
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct bnx2x {scalar_t__ state; struct vlan_group* vlgrp; } ;


 scalar_t__ BNX2X_STATE_OPEN ;
 int bnx2x_set_vlan_stripping (struct bnx2x*,int) ;
 int netdev_err (struct net_device*,char*,char*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

void bnx2x_vlan_rx_register(struct net_device *dev, struct vlan_group *vlgrp)
{
 struct bnx2x *bp = netdev_priv(dev);
 int rc = 0;






 if (bp->state == BNX2X_STATE_OPEN) {
  bool set = (vlgrp != ((void*)0));
  rc = bnx2x_set_vlan_stripping(bp, set);
  if (rc) {
   netdev_err(dev, "Failed to %s HW VLAN stripping\n",
              set ? "set" : "clear");
   if (set)
    bnx2x_set_vlan_stripping(bp, 0);
  }
 }







 bp->vlgrp = rc ? ((void*)0) : vlgrp;
}
