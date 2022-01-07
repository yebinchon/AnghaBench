
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; int device_up; } ;


 int EBUSY ;
 int en_err (struct mlx4_en_priv*,char*,...) ;
 int mlx4_en_clear_stats (struct net_device*) ;
 int mlx4_en_start_port (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_open(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int err = 0;

 mutex_lock(&mdev->state_lock);

 if (!mdev->device_up) {
  en_err(priv, "Cannot open - device down/disabled\n");
  err = -EBUSY;
  goto out;
 }


 mlx4_en_clear_stats(dev);

 err = mlx4_en_start_port(dev);
 if (err)
  en_err(priv, "Failed starting port:%d\n", priv->port);

out:
 mutex_unlock(&mdev->state_lock);
 return err;
}
