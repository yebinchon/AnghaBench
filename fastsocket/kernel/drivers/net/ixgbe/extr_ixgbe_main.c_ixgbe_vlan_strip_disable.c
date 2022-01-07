
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int num_rx_queues; TYPE_1__** rx_ring; struct ixgbe_hw hw; } ;
struct TYPE_3__ {int reg_idx; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL (int) ;
 int IXGBE_RXDCTL_VME ;
 int IXGBE_VLNCTRL ;
 int IXGBE_VLNCTRL_VME ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;




__attribute__((used)) static void ixgbe_vlan_strip_disable(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 vlnctrl;
 int i, j;

 switch (hw->mac.type) {
 case 130:
  vlnctrl = IXGBE_READ_REG(hw, IXGBE_VLNCTRL);
  vlnctrl &= ~IXGBE_VLNCTRL_VME;
  IXGBE_WRITE_REG(hw, IXGBE_VLNCTRL, vlnctrl);
  break;
 case 129:
 case 128:
  for (i = 0; i < adapter->num_rx_queues; i++) {
   j = adapter->rx_ring[i]->reg_idx;
   vlnctrl = IXGBE_READ_REG(hw, IXGBE_RXDCTL(j));
   vlnctrl &= ~IXGBE_RXDCTL_VME;
   IXGBE_WRITE_REG(hw, IXGBE_RXDCTL(j), vlnctrl);
  }
  break;
 default:
  break;
 }
}
