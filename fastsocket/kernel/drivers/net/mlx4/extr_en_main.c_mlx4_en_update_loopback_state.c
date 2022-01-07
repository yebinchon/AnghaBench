
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int flags; scalar_t__ validate_loopback; TYPE_1__* mdev; } ;
struct TYPE_2__ {int dev; } ;


 int MLX4_EN_FLAG_ENABLE_HW_LOOPBACK ;
 int MLX4_EN_FLAG_RX_FILTER_NEEDED ;
 scalar_t__ mlx4_is_mfunc (int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

void mlx4_en_update_loopback_state(struct net_device *dev, u32 features)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 priv->flags &= ~(MLX4_EN_FLAG_RX_FILTER_NEEDED|
   MLX4_EN_FLAG_ENABLE_HW_LOOPBACK);




 if (mlx4_is_mfunc(priv->mdev->dev) && !priv->validate_loopback)
  priv->flags |= MLX4_EN_FLAG_RX_FILTER_NEEDED;




 if (mlx4_is_mfunc(priv->mdev->dev) || priv->validate_loopback)
  priv->flags |= MLX4_EN_FLAG_ENABLE_HW_LOOPBACK;
}
