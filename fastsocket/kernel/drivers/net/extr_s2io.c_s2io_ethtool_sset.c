
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int dev; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 scalar_t__ SPEED_10000 ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 int s2io_close (int ) ;
 int s2io_open (int ) ;

__attribute__((used)) static int s2io_ethtool_sset(struct net_device *dev,
        struct ethtool_cmd *info)
{
 struct s2io_nic *sp = netdev_priv(dev);
 if ((info->autoneg == AUTONEG_ENABLE) ||
     (info->speed != SPEED_10000) ||
     (info->duplex != DUPLEX_FULL))
  return -EINVAL;
 else {
  s2io_close(sp->dev);
  s2io_open(sp->dev);
 }

 return 0;
}
