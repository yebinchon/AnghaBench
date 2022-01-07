
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; } ;


 int IFDOWN ;
 int en_dbg (int ,struct mlx4_en_priv*,char*) ;
 int mlx4_en_stop_port (struct net_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;

__attribute__((used)) static int mlx4_en_close(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;

 en_dbg(IFDOWN, priv, "Close port called\n");

 mutex_lock(&mdev->state_lock);

 mlx4_en_stop_port(dev, 0);
 netif_carrier_off(dev);

 mutex_unlock(&mdev->state_lock);
 return 0;
}
