
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_get_settings(struct net_device *netdev, struct ethtool_cmd *cmd)
{
 struct nic *nic = netdev_priv(netdev);
 return mii_ethtool_gset(&nic->mii, cmd);
}
