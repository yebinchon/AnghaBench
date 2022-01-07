
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;
struct atl2_adapter {int wol; } ;


 int ATLX_WUFC_BC ;
 int ATLX_WUFC_EX ;
 int ATLX_WUFC_LNKC ;
 int ATLX_WUFC_MAG ;
 int ATLX_WUFC_MC ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl2_get_wol(struct net_device *netdev,
 struct ethtool_wolinfo *wol)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);

 wol->supported = WAKE_MAGIC;
 wol->wolopts = 0;

 if (adapter->wol & ATLX_WUFC_EX)
  wol->wolopts |= WAKE_UCAST;
 if (adapter->wol & ATLX_WUFC_MC)
  wol->wolopts |= WAKE_MCAST;
 if (adapter->wol & ATLX_WUFC_BC)
  wol->wolopts |= WAKE_BCAST;
 if (adapter->wol & ATLX_WUFC_MAG)
  wol->wolopts |= WAKE_MAGIC;
 if (adapter->wol & ATLX_WUFC_LNKC)
  wol->wolopts |= WAKE_PHY;
}
