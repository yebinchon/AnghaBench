
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_link_config {int autoneg; int duplex; int speed; int advertising; } ;
struct niu {struct niu_link_config link_config; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int autoneg; int duplex; int speed; int advertising; } ;


 struct niu* netdev_priv (struct net_device*) ;
 int niu_init_link (struct niu*) ;

__attribute__((used)) static int niu_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct niu *np = netdev_priv(dev);
 struct niu_link_config *lp = &np->link_config;

 lp->advertising = cmd->advertising;
 lp->speed = cmd->speed;
 lp->duplex = cmd->duplex;
 lp->autoneg = cmd->autoneg;
 return niu_init_link(np);
}
