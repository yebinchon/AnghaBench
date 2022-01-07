
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;
struct atl1c_adapter {int wol; } ;


 int AT_WUFC_BC ;
 int AT_WUFC_EX ;
 int AT_WUFC_LNKC ;
 int AT_WUFC_MAG ;
 int AT_WUFC_MC ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl1c_get_wol(struct net_device *netdev,
     struct ethtool_wolinfo *wol)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);

 wol->supported = WAKE_MAGIC | WAKE_PHY;
 wol->wolopts = 0;

 if (adapter->wol & AT_WUFC_EX)
  wol->wolopts |= WAKE_UCAST;
 if (adapter->wol & AT_WUFC_MC)
  wol->wolopts |= WAKE_MCAST;
 if (adapter->wol & AT_WUFC_BC)
  wol->wolopts |= WAKE_BCAST;
 if (adapter->wol & AT_WUFC_MAG)
  wol->wolopts |= WAKE_MAGIC;
 if (adapter->wol & AT_WUFC_LNKC)
  wol->wolopts |= WAKE_PHY;
}
