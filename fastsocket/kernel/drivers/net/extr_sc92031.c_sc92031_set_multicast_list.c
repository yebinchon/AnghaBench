
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc92031_priv {int lock; } ;
struct net_device {int dummy; } ;


 int _sc92031_set_mar (struct net_device*) ;
 int _sc92031_set_rx_config (struct net_device*) ;
 int mmiowb () ;
 struct sc92031_priv* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void sc92031_set_multicast_list(struct net_device *dev)
{
 struct sc92031_priv *priv = netdev_priv(dev);

 spin_lock_bh(&priv->lock);

 _sc92031_set_mar(dev);
 _sc92031_set_rx_config(dev);
 mmiowb();

 spin_unlock_bh(&priv->lock);
}
