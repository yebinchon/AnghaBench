
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int rx_csum; } ;


 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_rx_csum(struct net_device *dev, u32 data)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 priv->rx_csum = (data != 0);
 return 0;
}
