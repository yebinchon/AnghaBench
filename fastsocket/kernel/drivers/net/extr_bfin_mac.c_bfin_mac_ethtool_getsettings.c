
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct bfin_mac_local {scalar_t__ phydev; } ;


 int EINVAL ;
 struct bfin_mac_local* netdev_priv (struct net_device*) ;
 int phy_ethtool_gset (scalar_t__,struct ethtool_cmd*) ;

__attribute__((used)) static int
bfin_mac_ethtool_getsettings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct bfin_mac_local *lp = netdev_priv(dev);

 if (lp->phydev)
  return phy_ethtool_gset(lp->phydev, cmd);

 return -EINVAL;
}
