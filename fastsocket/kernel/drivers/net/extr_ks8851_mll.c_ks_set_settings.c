
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_net {int mii; } ;
struct ethtool_cmd {int dummy; } ;


 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 struct ks_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_set_settings(struct net_device *netdev, struct ethtool_cmd *cmd)
{
 struct ks_net *ks = netdev_priv(netdev);
 return mii_ethtool_sset(&ks->mii, cmd);
}
