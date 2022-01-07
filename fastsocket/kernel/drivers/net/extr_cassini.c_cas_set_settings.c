
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; } ;
struct cas {int lock; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int cas_begin_auto_negotiation (struct cas*,struct ethtool_cmd*) ;
 struct cas* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cas_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct cas *cp = netdev_priv(dev);
 unsigned long flags;


 if (cmd->autoneg != AUTONEG_ENABLE &&
     cmd->autoneg != AUTONEG_DISABLE)
  return -EINVAL;

 if (cmd->autoneg == AUTONEG_DISABLE &&
     ((cmd->speed != SPEED_1000 &&
       cmd->speed != SPEED_100 &&
       cmd->speed != SPEED_10) ||
      (cmd->duplex != DUPLEX_HALF &&
       cmd->duplex != DUPLEX_FULL)))
  return -EINVAL;


 spin_lock_irqsave(&cp->lock, flags);
 cas_begin_auto_negotiation(cp, cmd);
 spin_unlock_irqrestore(&cp->lock, flags);
 return 0;
}
