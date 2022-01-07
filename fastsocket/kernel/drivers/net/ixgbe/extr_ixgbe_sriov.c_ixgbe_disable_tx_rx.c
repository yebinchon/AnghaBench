
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_VFRE (int) ;
 int IXGBE_VFTE (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

void ixgbe_disable_tx_rx(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;


 IXGBE_WRITE_REG(hw, IXGBE_VFTE(0), 0);
 IXGBE_WRITE_REG(hw, IXGBE_VFTE(1), 0);

 IXGBE_WRITE_REG(hw, IXGBE_VFRE(0), 0);
 IXGBE_WRITE_REG(hw, IXGBE_VFRE(1), 0);
}
