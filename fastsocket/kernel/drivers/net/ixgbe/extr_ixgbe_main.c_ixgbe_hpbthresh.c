
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int mtu; int features; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; struct net_device* netdev; struct ixgbe_hw hw; } ;


 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 scalar_t__ IXGBE_B2BT (int) ;
 int IXGBE_BT2KB (int) ;
 int IXGBE_DV (int,int) ;
 int IXGBE_DV_X540 (int,int) ;
 int IXGBE_ETH_FRAMING ;
 int IXGBE_FCOE_JUMBO_FRAME_SIZE ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXPBSIZE (int) ;
 int NETIF_F_FCOE_MTU ;
 int drv ;
 int e_warn (int ,char*,int) ;
 int ixgbe_fcoe_get_tc (struct ixgbe_adapter*) ;


__attribute__((used)) static int ixgbe_hpbthresh(struct ixgbe_adapter *adapter, int pb)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct net_device *dev = adapter->netdev;
 int link, tc, kb, marker;
 u32 dv_id, rx_pba;


 tc = link = dev->mtu + ETH_HLEN + ETH_FCS_LEN + IXGBE_ETH_FRAMING;
 switch (hw->mac.type) {
 case 128:
  dv_id = IXGBE_DV_X540(link, tc);
  break;
 default:
  dv_id = IXGBE_DV(link, tc);
  break;
 }


 if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
  dv_id += IXGBE_B2BT(tc);


 kb = IXGBE_BT2KB(dv_id);
 rx_pba = IXGBE_READ_REG(hw, IXGBE_RXPBSIZE(pb)) >> 10;

 marker = rx_pba - kb;





 if (marker < 0) {
  e_warn(drv, "Packet Buffer(%i) can not provide enough"
       "headroom to support flow control."
       "Decrease MTU or number of traffic classes\n", pb);
  marker = tc + 1;
 }

 return marker;
}
