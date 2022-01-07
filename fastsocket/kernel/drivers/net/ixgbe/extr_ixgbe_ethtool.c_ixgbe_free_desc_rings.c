
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_ring {int reg_idx; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_ring test_rx_ring; struct ixgbe_ring test_tx_ring; struct ixgbe_hw hw; } ;


 int IXGBE_DMATXCTL ;
 int IXGBE_DMATXCTL_TE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXCTRL ;
 int IXGBE_RXCTRL_RXEN ;
 int IXGBE_TXDCTL (int ) ;
 int IXGBE_TXDCTL_ENABLE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_disable_rx_queue (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int ixgbe_free_rx_resources (struct ixgbe_ring*) ;
 int ixgbe_free_tx_resources (struct ixgbe_ring*) ;


 int ixgbe_reset (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_free_desc_rings(struct ixgbe_adapter *adapter)
{
 struct ixgbe_ring *tx_ring = &adapter->test_tx_ring;
 struct ixgbe_ring *rx_ring = &adapter->test_rx_ring;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 reg_ctl;




 reg_ctl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
 reg_ctl &= ~IXGBE_RXCTRL_RXEN;
 IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, reg_ctl);
 ixgbe_disable_rx_queue(adapter, rx_ring);


 reg_ctl = IXGBE_READ_REG(hw, IXGBE_TXDCTL(tx_ring->reg_idx));
 reg_ctl &= ~IXGBE_TXDCTL_ENABLE;
 IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(tx_ring->reg_idx), reg_ctl);

 switch (hw->mac.type) {
 case 129:
 case 128:
  reg_ctl = IXGBE_READ_REG(hw, IXGBE_DMATXCTL);
  reg_ctl &= ~IXGBE_DMATXCTL_TE;
  IXGBE_WRITE_REG(hw, IXGBE_DMATXCTL, reg_ctl);
  break;
 default:
  break;
 }

 ixgbe_reset(adapter);

 ixgbe_free_tx_resources(&adapter->test_tx_ring);
 ixgbe_free_rx_resources(&adapter->test_rx_ring);
}
