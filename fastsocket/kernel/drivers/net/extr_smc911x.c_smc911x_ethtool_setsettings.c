
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc911x_local {scalar_t__ phy_type; int ctl_rfduplx; int lock; int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; scalar_t__ port; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 scalar_t__ PORT_AUI ;
 scalar_t__ PORT_TP ;
 scalar_t__ SPEED_10 ;
 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 struct smc911x_local* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
smc911x_ethtool_setsettings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct smc911x_local *lp = netdev_priv(dev);
 int ret;
 unsigned long flags;

 if (lp->phy_type != 0) {
  spin_lock_irqsave(&lp->lock, flags);
  ret = mii_ethtool_sset(&lp->mii, cmd);
  spin_unlock_irqrestore(&lp->lock, flags);
 } else {
  if (cmd->autoneg != AUTONEG_DISABLE ||
   cmd->speed != SPEED_10 ||
   (cmd->duplex != DUPLEX_HALF && cmd->duplex != DUPLEX_FULL) ||
   (cmd->port != PORT_TP && cmd->port != PORT_AUI))
   return -EINVAL;

  lp->ctl_rfduplx = cmd->duplex == DUPLEX_FULL;

  ret = 0;
 }

 return ret;
}
