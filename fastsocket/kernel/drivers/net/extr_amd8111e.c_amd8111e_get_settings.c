
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct amd8111e_priv {int lock; int mii_if; } ;


 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int amd8111e_get_settings(struct net_device *dev, struct ethtool_cmd *ecmd)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 spin_lock_irq(&lp->lock);
 mii_ethtool_gset(&lp->mii_if, ecmd);
 spin_unlock_irq(&lp->lock);
 return 0;
}
