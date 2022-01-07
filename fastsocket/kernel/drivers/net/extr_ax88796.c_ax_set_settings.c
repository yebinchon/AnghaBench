
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct ax_device {int mii_lock; int mii; } ;


 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ax_device* to_ax_dev (struct net_device*) ;

__attribute__((used)) static int ax_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct ax_device *ax = to_ax_dev(dev);
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&ax->mii_lock, flags);
 rc = mii_ethtool_sset(&ax->mii, cmd);
 spin_unlock_irqrestore(&ax->mii_lock, flags);

 return rc;
}
