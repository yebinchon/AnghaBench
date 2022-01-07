
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks8851_net {int mii; } ;
struct ethtool_cmd {int dummy; } ;


 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct ks8851_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks8851_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct ks8851_net *ks = netdev_priv(dev);
 return mii_ethtool_gset(&ks->mii, cmd);
}
