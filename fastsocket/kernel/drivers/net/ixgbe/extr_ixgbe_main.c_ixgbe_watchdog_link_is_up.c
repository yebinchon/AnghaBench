
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {scalar_t__ link_speed; int state; int last_rx_ptp_check; int flags2; struct ixgbe_hw hw; struct net_device* netdev; } ;


 int IXGBE_FCCFG ;
 scalar_t__ IXGBE_FCCFG_TFCE_802_3X ;
 int IXGBE_FCTRL ;
 scalar_t__ IXGBE_FCTRL_RFCE ;
 int IXGBE_FLAG2_SEARCH_FOR_SFP ;
 scalar_t__ IXGBE_LINK_SPEED_100_FULL ;
 scalar_t__ IXGBE_LINK_SPEED_10GB_FULL ;
 scalar_t__ IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_MFLCN ;
 scalar_t__ IXGBE_MFLCN_RFCE ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RMCS ;
 scalar_t__ IXGBE_RMCS_TFCE_802_3X ;
 int __IXGBE_PTP_RUNNING ;
 int drv ;
 int e_info (int ,char*,char*,char*) ;
 int ixgbe_check_vf_rate_limit (struct ixgbe_adapter*) ;



 int ixgbe_ping_all_vfs (struct ixgbe_adapter*) ;
 int ixgbe_ptp_start_cyclecounter (struct ixgbe_adapter*) ;
 int ixgbe_update_default_up (struct ixgbe_adapter*) ;
 int jiffies ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 link_speed = adapter->link_speed;
 bool flow_rx, flow_tx;


 if (netif_carrier_ok(netdev))
  return;

 adapter->flags2 &= ~IXGBE_FLAG2_SEARCH_FOR_SFP;

 switch (hw->mac.type) {
 case 130: {
  u32 frctl = IXGBE_READ_REG(hw, IXGBE_FCTRL);
  u32 rmcs = IXGBE_READ_REG(hw, IXGBE_RMCS);
  flow_rx = !!(frctl & IXGBE_FCTRL_RFCE);
  flow_tx = !!(rmcs & IXGBE_RMCS_TFCE_802_3X);
 }
  break;
 case 128:
 case 129: {
  u32 mflcn = IXGBE_READ_REG(hw, IXGBE_MFLCN);
  u32 fccfg = IXGBE_READ_REG(hw, IXGBE_FCCFG);
  flow_rx = !!(mflcn & IXGBE_MFLCN_RFCE);
  flow_tx = !!(fccfg & IXGBE_FCCFG_TFCE_802_3X);
 }
  break;
 default:
  flow_tx = 0;
  flow_rx = 0;
  break;
 }
 e_info(drv, "NIC Link is Up %s, Flow Control: %s\n",
        (link_speed == IXGBE_LINK_SPEED_10GB_FULL ?
        "10 Gbps" :
        (link_speed == IXGBE_LINK_SPEED_1GB_FULL ?
        "1 Gbps" :
        (link_speed == IXGBE_LINK_SPEED_100_FULL ?
        "100 Mbps" :
        "unknown speed"))),
        ((flow_rx && flow_tx) ? "RX/TX" :
        (flow_rx ? "RX" :
        (flow_tx ? "TX" : "None"))));

 netif_carrier_on(netdev);
 ixgbe_check_vf_rate_limit(adapter);


 ixgbe_update_default_up(adapter);


 ixgbe_ping_all_vfs(adapter);
}
