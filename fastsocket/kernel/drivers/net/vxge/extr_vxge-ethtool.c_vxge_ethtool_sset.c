
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 scalar_t__ SPEED_10000 ;

__attribute__((used)) static int vxge_ethtool_sset(struct net_device *dev, struct ethtool_cmd *info)
{

 if ((info->autoneg == AUTONEG_ENABLE) ||
     (info->speed != SPEED_10000) || (info->duplex != DUPLEX_FULL))
  return -EINVAL;

 return 0;
}
