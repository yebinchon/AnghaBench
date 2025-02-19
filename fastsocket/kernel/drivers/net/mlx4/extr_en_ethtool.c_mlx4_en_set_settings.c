
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ duplex; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 scalar_t__ SPEED_10000 ;
 scalar_t__ ethtool_cmd_speed (struct ethtool_cmd*) ;

__attribute__((used)) static int mlx4_en_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 if ((cmd->autoneg == AUTONEG_ENABLE) ||
     (ethtool_cmd_speed(cmd) != SPEED_10000) ||
     (cmd->duplex != DUPLEX_FULL))
  return -EINVAL;


 return 0;
}
