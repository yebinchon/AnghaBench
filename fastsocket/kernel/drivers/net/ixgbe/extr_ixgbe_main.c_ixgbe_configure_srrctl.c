
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ixgbe_ring {int reg_idx; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__* ring_feature; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int mask; } ;


 int IXGBE_RX_HDR_SIZE ;
 int IXGBE_SRRCTL (int ) ;
 int IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT ;
 int IXGBE_SRRCTL_BSIZEPKT_SHIFT ;
 int IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t RING_F_RSS ;
 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_rx_bufsz (struct ixgbe_ring*) ;

__attribute__((used)) static void ixgbe_configure_srrctl(struct ixgbe_adapter *adapter,
       struct ixgbe_ring *rx_ring)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 srrctl;
 u8 reg_idx = rx_ring->reg_idx;

 if (hw->mac.type == ixgbe_mac_82598EB) {
  u16 mask = adapter->ring_feature[RING_F_RSS].mask;





  reg_idx &= mask;
 }


 srrctl = IXGBE_RX_HDR_SIZE << IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT;


 srrctl |= ixgbe_rx_bufsz(rx_ring) >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;


 srrctl |= IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF;

 IXGBE_WRITE_REG(hw, IXGBE_SRRCTL(reg_idx), srrctl);
}
