
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gem {int lock; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ advertising; scalar_t__ speed; scalar_t__ duplex; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int gem_begin_auto_negotiation (struct gem*,struct ethtool_cmd*) ;
 int gem_get_cell (struct gem*) ;
 int gem_put_cell (struct gem*) ;
 struct gem* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int gem_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct gem *gp = netdev_priv(dev);


 if (cmd->autoneg != AUTONEG_ENABLE &&
     cmd->autoneg != AUTONEG_DISABLE)
  return -EINVAL;

 if (cmd->autoneg == AUTONEG_ENABLE &&
     cmd->advertising == 0)
  return -EINVAL;

 if (cmd->autoneg == AUTONEG_DISABLE &&
     ((cmd->speed != SPEED_1000 &&
       cmd->speed != SPEED_100 &&
       cmd->speed != SPEED_10) ||
      (cmd->duplex != DUPLEX_HALF &&
       cmd->duplex != DUPLEX_FULL)))
  return -EINVAL;


 spin_lock_irq(&gp->lock);
 gem_get_cell(gp);
 gem_begin_auto_negotiation(gp, cmd);
 gem_put_cell(gp);
 spin_unlock_irq(&gp->lock);

 return 0;
}
