
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct happy_meal {int happy_lock; int tcvregs; int happy_timer; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 int del_timer (int *) ;
 int happy_meal_begin_auto_negotiation (struct happy_meal*,int ,struct ethtool_cmd*) ;
 struct happy_meal* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hme_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct happy_meal *hp = netdev_priv(dev);


 if (cmd->autoneg != AUTONEG_ENABLE &&
     cmd->autoneg != AUTONEG_DISABLE)
  return -EINVAL;
 if (cmd->autoneg == AUTONEG_DISABLE &&
     ((cmd->speed != SPEED_100 &&
       cmd->speed != SPEED_10) ||
      (cmd->duplex != DUPLEX_HALF &&
       cmd->duplex != DUPLEX_FULL)))
  return -EINVAL;


 spin_lock_irq(&hp->happy_lock);
 del_timer(&hp->happy_timer);
 happy_meal_begin_auto_negotiation(hp, hp->tcvregs, cmd);
 spin_unlock_irq(&hp->happy_lock);

 return 0;
}
