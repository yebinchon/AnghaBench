
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_priv {int lock; TYPE_2__* mac_type; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_filter ) (struct net_device*) ;} ;


 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static void stmmac_set_rx_mode(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 spin_lock(&priv->lock);
 priv->mac_type->ops->set_filter(dev);
 spin_unlock(&priv->lock);
 return;
}
