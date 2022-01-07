
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_local {scalar_t__ phy_type; int ctl_rspeed; int tcr_cur_mode; int lock; int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int maxtxpkt; int maxrxpkt; int supported; int duplex; scalar_t__ port; int transceiver; int autoneg; int speed; } ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_AUI ;
 int SUPPORTED_TP ;
 int TCR_SWFDUP ;
 int XCVR_INTERNAL ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct smc_local* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
smc_ethtool_getsettings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct smc_local *lp = netdev_priv(dev);
 int ret;

 cmd->maxtxpkt = 1;
 cmd->maxrxpkt = 1;

 if (lp->phy_type != 0) {
  spin_lock_irq(&lp->lock);
  ret = mii_ethtool_gset(&lp->mii, cmd);
  spin_unlock_irq(&lp->lock);
 } else {
  cmd->supported = SUPPORTED_10baseT_Half |
     SUPPORTED_10baseT_Full |
     SUPPORTED_TP | SUPPORTED_AUI;

  if (lp->ctl_rspeed == 10)
   cmd->speed = SPEED_10;
  else if (lp->ctl_rspeed == 100)
   cmd->speed = SPEED_100;

  cmd->autoneg = AUTONEG_DISABLE;
  cmd->transceiver = XCVR_INTERNAL;
  cmd->port = 0;
  cmd->duplex = lp->tcr_cur_mode & TCR_SWFDUP ? DUPLEX_FULL : DUPLEX_HALF;

  ret = 0;
 }

 return ret;
}
