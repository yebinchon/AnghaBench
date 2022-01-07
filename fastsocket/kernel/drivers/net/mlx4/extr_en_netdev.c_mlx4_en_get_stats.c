
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {struct net_device_stats ret_stats; int stats_lock; int stats; } ;


 int memcpy (struct net_device_stats*,int *,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct net_device_stats *mlx4_en_get_stats(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 spin_lock_bh(&priv->stats_lock);
 memcpy(&priv->ret_stats, &priv->stats, sizeof(priv->stats));
 spin_unlock_bh(&priv->stats_lock);

 return &priv->ret_stats;
}
