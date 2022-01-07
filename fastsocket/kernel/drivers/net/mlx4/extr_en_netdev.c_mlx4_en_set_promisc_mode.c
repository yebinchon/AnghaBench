
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mlx4_en_priv {int flags; int vlgrp; int port; int base_qpn; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct TYPE_8__ {int steering_mode; } ;
struct TYPE_9__ {TYPE_1__ caps; } ;


 int MLX4_EN_FLAG_MC_PROMISC ;
 int MLX4_EN_FLAG_PROMISC ;
 int MLX4_FS_ALL_DEFAULT ;
 int MLX4_MCAST_DISABLE ;



 int en_err (struct mlx4_en_priv*,char*) ;
 int en_warn (struct mlx4_en_priv*,char*) ;
 int mlx4_SET_MCAST_FLTR (TYPE_2__*,int ,int ,int ,int ) ;
 int mlx4_SET_PORT_qpn_calc (TYPE_2__*,int ,int ,int) ;
 int mlx4_SET_VLAN_FLTR (TYPE_2__*,int ,int ) ;
 int mlx4_flow_steer_promisc_add (TYPE_2__*,int ,int ,int ) ;
 int mlx4_multicast_promisc_add (TYPE_2__*,int ,int ) ;
 int mlx4_unicast_promisc_add (TYPE_2__*,int ,int ) ;
 scalar_t__ netif_msg_rx_status (struct mlx4_en_priv*) ;

__attribute__((used)) static void mlx4_en_set_promisc_mode(struct mlx4_en_priv *priv,
         struct mlx4_en_dev *mdev)
{
 int err = 0;

 if (!(priv->flags & MLX4_EN_FLAG_PROMISC)) {
  if (netif_msg_rx_status(priv))
   en_warn(priv, "Entering promiscuous mode\n");
  priv->flags |= MLX4_EN_FLAG_PROMISC;


  switch (mdev->dev->caps.steering_mode) {
  case 128:
   err = mlx4_flow_steer_promisc_add(mdev->dev,
         priv->port,
         priv->base_qpn,
         MLX4_FS_ALL_DEFAULT);
   if (err)
    en_err(priv, "Failed enabling promiscuous mode\n");
   priv->flags |= MLX4_EN_FLAG_MC_PROMISC;
   break;

  case 129:
   err = mlx4_unicast_promisc_add(mdev->dev,
             priv->base_qpn,
             priv->port);
   if (err)
    en_err(priv, "Failed enabling unicast promiscuous mode\n");




   if (!(priv->flags & MLX4_EN_FLAG_MC_PROMISC)) {
    err = mlx4_multicast_promisc_add(mdev->dev,
         priv->base_qpn,
         priv->port);
    if (err)
     en_err(priv, "Failed enabling multicast promiscuous mode\n");
    priv->flags |= MLX4_EN_FLAG_MC_PROMISC;
   }
   break;

  case 130:
   err = mlx4_SET_PORT_qpn_calc(mdev->dev,
           priv->port,
           priv->base_qpn,
           1);
   if (err)
    en_err(priv, "Failed enabling promiscuous mode\n");
   break;
  }


  err = mlx4_SET_MCAST_FLTR(mdev->dev, priv->port, 0,
       0, MLX4_MCAST_DISABLE);
  if (err)
   en_err(priv, "Failed disabling multicast filter\n");


  err = mlx4_SET_VLAN_FLTR(mdev->dev, priv->port, priv->vlgrp);
  if (err)
   en_err(priv, "Failed disabling VLAN filter\n");
 }
}
