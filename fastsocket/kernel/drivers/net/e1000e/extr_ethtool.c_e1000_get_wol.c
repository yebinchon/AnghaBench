
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;
struct e1000_adapter {int flags; int wol; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int E1000_WUFC_BC ;
 int E1000_WUFC_EX ;
 int E1000_WUFC_LNKC ;
 int E1000_WUFC_MAG ;
 int E1000_WUFC_MC ;
 int FLAG_HAS_WOL ;
 int FLAG_NO_WAKE_UCAST ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int device_can_wakeup (int *) ;
 int e_err (char*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e1000_get_wol(struct net_device *netdev,
     struct ethtool_wolinfo *wol)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 wol->supported = 0;
 wol->wolopts = 0;

 if (!(adapter->flags & FLAG_HAS_WOL) ||
     !device_can_wakeup(&adapter->pdev->dev))
  return;

 wol->supported = WAKE_UCAST | WAKE_MCAST |
     WAKE_BCAST | WAKE_MAGIC | WAKE_PHY;


 if (adapter->flags & FLAG_NO_WAKE_UCAST) {
  wol->supported &= ~WAKE_UCAST;

  if (adapter->wol & E1000_WUFC_EX)
   e_err("Interface does not support directed (unicast) frame wake-up packets\n");
 }

 if (adapter->wol & E1000_WUFC_EX)
  wol->wolopts |= WAKE_UCAST;
 if (adapter->wol & E1000_WUFC_MC)
  wol->wolopts |= WAKE_MCAST;
 if (adapter->wol & E1000_WUFC_BC)
  wol->wolopts |= WAKE_BCAST;
 if (adapter->wol & E1000_WUFC_MAG)
  wol->wolopts |= WAKE_MAGIC;
 if (adapter->wol & E1000_WUFC_LNKC)
  wol->wolopts |= WAKE_PHY;
}
