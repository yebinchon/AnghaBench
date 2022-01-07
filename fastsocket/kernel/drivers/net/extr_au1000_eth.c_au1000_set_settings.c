
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct au1000_private {scalar_t__ phy_dev; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int phy_ethtool_sset (scalar_t__,struct ethtool_cmd*) ;

__attribute__((used)) static int au1000_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct au1000_private *aup = netdev_priv(dev);

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 if (aup->phy_dev)
  return phy_ethtool_sset(aup->phy_dev, cmd);

 return -EINVAL;
}
