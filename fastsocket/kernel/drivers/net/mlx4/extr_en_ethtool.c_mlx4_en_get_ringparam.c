
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_2__* tx_ring; TYPE_1__* rx_ring; scalar_t__ port_up; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {int size; int actual_size; } ;


 int MLX4_EN_MAX_RX_SIZE ;
 int MLX4_EN_MAX_TX_SIZE ;
 int memset (struct ethtool_ringparam*,int ,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx4_en_get_ringparam(struct net_device *dev,
      struct ethtool_ringparam *param)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 memset(param, 0, sizeof(*param));
 param->rx_max_pending = MLX4_EN_MAX_RX_SIZE;
 param->tx_max_pending = MLX4_EN_MAX_TX_SIZE;
 param->rx_pending = priv->port_up ?
  priv->rx_ring[0].actual_size : priv->rx_ring[0].size;
 param->tx_pending = priv->tx_ring[0].size;
}
