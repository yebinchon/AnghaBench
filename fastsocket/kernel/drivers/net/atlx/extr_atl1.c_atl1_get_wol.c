
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;
struct atl1_adapter {int wol; } ;


 int ATLX_WUFC_MAG ;
 int WAKE_MAGIC ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl1_get_wol(struct net_device *netdev,
 struct ethtool_wolinfo *wol)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);

 wol->supported = WAKE_MAGIC;
 wol->wolopts = 0;
 if (adapter->wol & ATLX_WUFC_MAG)
  wol->wolopts |= WAKE_MAGIC;
 return;
}
