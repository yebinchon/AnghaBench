
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct net_device {int name; } ;
struct bdx_priv {struct vlan_group* vlgrp; } ;


 int DBG (char*,int ,struct vlan_group*) ;
 int ENTER ;
 int RET () ;
 struct bdx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
bdx_vlan_rx_register(struct net_device *ndev, struct vlan_group *grp)
{
 struct bdx_priv *priv = netdev_priv(ndev);

 ENTER;
 DBG("device='%s', group='%p'\n", ndev->name, grp);
 priv->vlgrp = grp;
 RET();
}
