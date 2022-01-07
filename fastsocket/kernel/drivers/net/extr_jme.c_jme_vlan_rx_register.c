
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct jme_adapter {struct vlan_group* vlgrp; } ;


 int jme_pause_rx (struct jme_adapter*) ;
 int jme_resume_rx (struct jme_adapter*) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
jme_vlan_rx_register(struct net_device *netdev, struct vlan_group *grp)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 jme_pause_rx(jme);
 jme->vlgrp = grp;
 jme_resume_rx(jme);
}
