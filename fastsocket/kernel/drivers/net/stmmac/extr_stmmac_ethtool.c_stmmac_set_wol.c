
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmmac_priv {scalar_t__ wolenabled; int wolopts; int lock; int device; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EINVAL ;
 scalar_t__ PMT_NOT_SUPPORTED ;
 int WAKE_MAGIC ;
 int device_set_wakeup_enable (int ,int) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int stmmac_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 u32 support = WAKE_MAGIC;

 if (priv->wolenabled == PMT_NOT_SUPPORTED)
  return -EINVAL;

 if (wol->wolopts & ~support)
  return -EINVAL;

 if (wol->wolopts == 0)
  device_set_wakeup_enable(priv->device, 0);
 else
  device_set_wakeup_enable(priv->device, 1);

 spin_lock_irq(&priv->lock);
 priv->wolopts = wol->wolopts;
 spin_unlock_irq(&priv->lock);

 return 0;
}
