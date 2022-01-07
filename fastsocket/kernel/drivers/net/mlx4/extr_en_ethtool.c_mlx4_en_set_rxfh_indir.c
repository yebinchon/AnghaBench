
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int rx_ring_num; TYPE_1__* prof; scalar_t__ port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; } ;
struct TYPE_2__ {int rss_rings; } ;


 int EINVAL ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int is_power_of_2 (int) ;
 int mlx4_en_start_port (struct net_device*) ;
 int mlx4_en_stop_port (struct net_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_rxfh_indir(struct net_device *dev,
  const u32 *ring_index)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int port_up = 0;
 int err = 0;
 int i;
 int rss_rings = 0;




 for (i = 0; i < priv->rx_ring_num; i++) {
  if (i > 0 && !ring_index[i] && !rss_rings)
   rss_rings = i;

  if (ring_index[i] != (i % (rss_rings ?: priv->rx_ring_num)))
   return -EINVAL;
 }

 if (!rss_rings)
  rss_rings = priv->rx_ring_num;


 if (!is_power_of_2(rss_rings))
  return -EINVAL;

 mutex_lock(&mdev->state_lock);
 if (priv->port_up) {
  port_up = 1;
  mlx4_en_stop_port(dev, 1);
 }

 priv->prof->rss_rings = rss_rings;

 if (port_up) {
  err = mlx4_en_start_port(dev);
  if (err)
   en_err(priv, "Failed starting port\n");
 }

 mutex_unlock(&mdev->state_lock);
 return err;
}
