
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* prof; scalar_t__ rx_skb_size; int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct TYPE_2__ {int tx_pause; int rx_pause; int rx_ppp; int tx_ppp; } ;


 scalar_t__ ETH_FCS_LEN ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int mlx4_SET_PORT_general (int ,int ,scalar_t__,int,int ,int,int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_pauseparam(struct net_device *dev,
    struct ethtool_pauseparam *pause)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int err;

 priv->prof->tx_pause = pause->tx_pause != 0;
 priv->prof->rx_pause = pause->rx_pause != 0;
 err = mlx4_SET_PORT_general(mdev->dev, priv->port,
        priv->rx_skb_size + ETH_FCS_LEN,
        priv->prof->tx_pause,
        priv->prof->tx_ppp,
        priv->prof->rx_pause,
        priv->prof->rx_ppp);
 if (err)
  en_err(priv, "Failed setting pause params\n");

 return err;
}
