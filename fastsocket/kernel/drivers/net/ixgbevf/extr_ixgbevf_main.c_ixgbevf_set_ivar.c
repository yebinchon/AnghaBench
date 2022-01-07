
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;
typedef int s8 ;


 int IXGBE_IVAR_ALLOC_VAL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VTIVAR (int) ;
 int IXGBE_VTIVAR_MISC ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbevf_set_ivar(struct ixgbevf_adapter *adapter, s8 direction,
        u8 queue, u8 msix_vector)
{
 u32 ivar, index;
 struct ixgbe_hw *hw = &adapter->hw;
 if (direction == -1) {

  msix_vector |= IXGBE_IVAR_ALLOC_VAL;
  ivar = IXGBE_READ_REG(hw, IXGBE_VTIVAR_MISC);
  ivar &= ~0xFF;
  ivar |= msix_vector;
  IXGBE_WRITE_REG(hw, IXGBE_VTIVAR_MISC, ivar);
 } else {

  msix_vector |= IXGBE_IVAR_ALLOC_VAL;
  index = ((16 * (queue & 1)) + (8 * direction));
  ivar = IXGBE_READ_REG(hw, IXGBE_VTIVAR(queue >> 1));
  ivar &= ~(0xFF << index);
  ivar |= (msix_vector << index);
  IXGBE_WRITE_REG(hw, IXGBE_VTIVAR(queue >> 1), ivar);
 }
}
