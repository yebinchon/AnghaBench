
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int link_up; int state; int flags2; scalar_t__ link_speed; struct ixgbe_hw hw; struct net_device* netdev; } ;


 int IXGBE_FLAG2_SEARCH_FOR_SFP ;
 int __IXGBE_PTP_RUNNING ;
 int drv ;
 int e_info (int ,char*) ;
 scalar_t__ ixgbe_is_sfp (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_ping_all_vfs (struct ixgbe_adapter*) ;
 int ixgbe_ptp_start_cyclecounter (struct ixgbe_adapter*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_watchdog_link_is_down(struct ixgbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;

 adapter->link_up = 0;
 adapter->link_speed = 0;


 if (!netif_carrier_ok(netdev))
  return;


 if (ixgbe_is_sfp(hw) && hw->mac.type == ixgbe_mac_82598EB)
  adapter->flags2 |= IXGBE_FLAG2_SEARCH_FOR_SFP;






 e_info(drv, "NIC Link is Down\n");
 netif_carrier_off(netdev);


 ixgbe_ping_all_vfs(adapter);
}
