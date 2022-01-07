
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {size_t port; int tx_cq; int tx_ring; int service_task; int stats_task; int res; scalar_t__ allocated; scalar_t__ registered; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; int ** pndev; int workqueue; int dev; } ;


 int DRV ;
 int MLX4_EN_PAGE_SIZE ;
 int cancel_delayed_work (int *) ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,size_t) ;
 int flush_workqueue (int ) ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 int mlx4_en_free_resources (struct mlx4_en_priv*) ;
 int mlx4_free_hwq_res (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

void mlx4_en_destroy_netdev(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;

 en_dbg(DRV, priv, "Destroying netdev on port:%d\n", priv->port);


 if (priv->registered)
  unregister_netdev(dev);

 if (priv->allocated)
  mlx4_free_hwq_res(mdev->dev, &priv->res, MLX4_EN_PAGE_SIZE);

 cancel_delayed_work(&priv->stats_task);
 cancel_delayed_work(&priv->service_task);

 flush_workqueue(mdev->workqueue);


 mutex_lock(&mdev->state_lock);
 mdev->pndev[priv->port] = ((void*)0);
 mutex_unlock(&mdev->state_lock);

 mlx4_en_free_resources(priv);

 kfree(priv->tx_ring);
 kfree(priv->tx_cq);

 free_netdev(dev);
}
