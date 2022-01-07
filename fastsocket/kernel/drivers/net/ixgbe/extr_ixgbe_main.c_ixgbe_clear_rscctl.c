
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_ring {int reg_idx; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RSCCTL (int ) ;
 int IXGBE_RSCCTL_RSCEN ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

void ixgbe_clear_rscctl(struct ixgbe_adapter *adapter,
                        struct ixgbe_ring *ring)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 rscctrl;
 u8 reg_idx = ring->reg_idx;

 rscctrl = IXGBE_READ_REG(hw, IXGBE_RSCCTL(reg_idx));
 rscctrl &= ~IXGBE_RSCCTL_RSCEN;
 IXGBE_WRITE_REG(hw, IXGBE_RSCCTL(reg_idx), rscctrl);
}
