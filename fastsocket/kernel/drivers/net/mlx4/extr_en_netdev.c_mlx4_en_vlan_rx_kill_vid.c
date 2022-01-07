
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {int vlgrp; int port; scalar_t__ port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; int dev; scalar_t__ device_up; } ;


 int HW ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,unsigned short,...) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int mlx4_SET_VLAN_FLTR (int ,int ,int ) ;
 int mlx4_find_cached_vlan (int ,int ,unsigned short,int*) ;
 int mlx4_unregister_vlan (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int vlan_group_get_device (int ,unsigned short) ;
 int vlan_group_set_device (int ,unsigned short,int *) ;

__attribute__((used)) static void mlx4_en_vlan_rx_kill_vid(struct net_device *dev, unsigned short vid)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int err;
 int idx;

 if (!priv->vlgrp)
  return;

 en_dbg(HW, priv, "Killing VID:%d (vlgrp:%p vlgrp entry:%p)\n",
        vid, priv->vlgrp, vlan_group_get_device(priv->vlgrp, vid));
 vlan_group_set_device(priv->vlgrp, vid, ((void*)0));


 mutex_lock(&mdev->state_lock);
 if (!mlx4_find_cached_vlan(mdev->dev, priv->port, vid, &idx))
  mlx4_unregister_vlan(mdev->dev, priv->port, idx);
 else
  en_dbg(HW, priv, "could not find vid %d in cache\n", vid);

 if (mdev->device_up && priv->port_up) {
  err = mlx4_SET_VLAN_FLTR(mdev->dev, priv->port, priv->vlgrp);
  if (err)
   en_err(priv, "Failed configuring VLAN filter\n");
 }
 mutex_unlock(&mdev->state_lock);
}
