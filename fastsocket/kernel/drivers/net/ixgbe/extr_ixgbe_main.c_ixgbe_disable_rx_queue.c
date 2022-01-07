
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ixgbe_ring {int reg_idx; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_LINKS ;
 int IXGBE_LINKS_UP ;
 int IXGBE_MAX_RX_DESC_POLL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL (int ) ;
 int IXGBE_RXDCTL_ENABLE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int drv ;
 int e_err (int ,char*,int ) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int udelay (int) ;

void ixgbe_disable_rx_queue(struct ixgbe_adapter *adapter,
       struct ixgbe_ring *ring)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int wait_loop = IXGBE_MAX_RX_DESC_POLL;
 u32 rxdctl;
 u8 reg_idx = ring->reg_idx;

 rxdctl = IXGBE_READ_REG(hw, IXGBE_RXDCTL(reg_idx));
 rxdctl &= ~IXGBE_RXDCTL_ENABLE;


 IXGBE_WRITE_REG(hw, IXGBE_RXDCTL(reg_idx), rxdctl);

 if (hw->mac.type == ixgbe_mac_82598EB &&
     !(IXGBE_READ_REG(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
  return;


 do {
  udelay(10);
  rxdctl = IXGBE_READ_REG(hw, IXGBE_RXDCTL(reg_idx));
 } while (--wait_loop && (rxdctl & IXGBE_RXDCTL_ENABLE));

 if (!wait_loop) {
  e_err(drv, "RXDCTL.ENABLE on Rx queue %d not cleared within "
        "the polling period\n", reg_idx);
 }
}
