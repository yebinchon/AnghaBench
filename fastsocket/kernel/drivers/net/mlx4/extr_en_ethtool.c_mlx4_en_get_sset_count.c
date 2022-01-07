
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {int tx_ring_num; int rx_ring_num; TYPE_3__* mdev; int stats_bitmap; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 int EOPNOTSUPP ;


 int MLX4_DEV_CAP_FLAG_UC_LOOPBACK ;
 int MLX4_EN_NUM_SELF_TEST ;
 int NUM_ALL_STATS ;
 int hweight64 (int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_sset_count(struct net_device *dev, int sset)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int bit_count = hweight64(priv->stats_bitmap);

 switch (sset) {
 case 129:
  return (priv->stats_bitmap ? bit_count : NUM_ALL_STATS) +
   (priv->tx_ring_num + priv->rx_ring_num) * 2;
 case 128:
  return MLX4_EN_NUM_SELF_TEST - !(priv->mdev->dev->caps.flags
     & MLX4_DEV_CAP_FLAG_UC_LOOPBACK) * 2;
 default:
  return -EOPNOTSUPP;
 }
}
