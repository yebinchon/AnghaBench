
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct atl1_adapter {int wol; } ;


 int ATLX_WUFC_MAG ;
 int EOPNOTSUPP ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl1_set_wol(struct net_device *netdev,
 struct ethtool_wolinfo *wol)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);

 if (wol->wolopts & (WAKE_PHY | WAKE_UCAST | WAKE_MCAST | WAKE_BCAST |
  WAKE_ARP | WAKE_MAGICSECURE))
  return -EOPNOTSUPP;
 adapter->wol = 0;
 if (wol->wolopts & WAKE_MAGIC)
  adapter->wol |= ATLX_WUFC_MAG;
 return 0;
}
