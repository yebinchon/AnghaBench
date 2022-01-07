
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {int lock; int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct rtl8139_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int rtl8139_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct rtl8139_private *tp = netdev_priv(dev);
 spin_lock_irq(&tp->lock);
 mii_ethtool_gset(&tp->mii, cmd);
 spin_unlock_irq(&tp->lock);
 return 0;
}
