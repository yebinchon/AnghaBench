
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;

__attribute__((used)) static int w90p910_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct w90p910_ether *ether = netdev_priv(dev);
 return mii_ethtool_gset(&ether->mii, cmd);
}
