
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {scalar_t__ wolenabled; int lock; int wolopts; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 scalar_t__ PMT_SUPPORTED ;
 int WAKE_MAGIC ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void stmmac_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 spin_lock_irq(&priv->lock);
 if (priv->wolenabled == PMT_SUPPORTED) {
  wol->supported = WAKE_MAGIC;
  wol->wolopts = priv->wolopts;
 }
 spin_unlock_irq(&priv->lock);
}
