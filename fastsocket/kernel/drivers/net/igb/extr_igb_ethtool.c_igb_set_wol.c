
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct igb_adapter {int flags; int wol; TYPE_1__* pdev; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_2__ {int dev; } ;


 int E1000_WUFC_BC ;
 int E1000_WUFC_EX ;
 int E1000_WUFC_LNKC ;
 int E1000_WUFC_MAG ;
 int E1000_WUFC_MC ;
 int EOPNOTSUPP ;
 int IGB_FLAG_WOL_SUPPORTED ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int device_set_wakeup_enable (int *,int ) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct igb_adapter *adapter = netdev_priv(netdev);

 if (wol->wolopts & (WAKE_ARP | WAKE_MAGICSECURE))
  return -EOPNOTSUPP;

 if (!(adapter->flags & IGB_FLAG_WOL_SUPPORTED))
  return wol->wolopts ? -EOPNOTSUPP : 0;


 adapter->wol = 0;

 if (wol->wolopts & WAKE_UCAST)
  adapter->wol |= E1000_WUFC_EX;
 if (wol->wolopts & WAKE_MCAST)
  adapter->wol |= E1000_WUFC_MC;
 if (wol->wolopts & WAKE_BCAST)
  adapter->wol |= E1000_WUFC_BC;
 if (wol->wolopts & WAKE_MAGIC)
  adapter->wol |= E1000_WUFC_MAG;
 if (wol->wolopts & WAKE_PHY)
  adapter->wol |= E1000_WUFC_LNKC;
 device_set_wakeup_enable(&adapter->pdev->dev, adapter->wol);

 return 0;
}
