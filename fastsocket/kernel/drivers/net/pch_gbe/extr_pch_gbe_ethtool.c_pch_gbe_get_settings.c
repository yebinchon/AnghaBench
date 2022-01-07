
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int netdev; int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int advertising; } ;


 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_TP ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_TP ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int) ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (int ) ;

__attribute__((used)) static int pch_gbe_get_settings(struct net_device *netdev,
     struct ethtool_cmd *ecmd)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 int ret;

 ret = mii_ethtool_gset(&adapter->mii, ecmd);
 ecmd->supported &= ~(SUPPORTED_TP | SUPPORTED_1000baseT_Half);
 ecmd->advertising &= ~(ADVERTISED_TP | ADVERTISED_1000baseT_Half);

 if (!netif_carrier_ok(adapter->netdev))
  ethtool_cmd_speed_set(ecmd, -1);
 return ret;
}
