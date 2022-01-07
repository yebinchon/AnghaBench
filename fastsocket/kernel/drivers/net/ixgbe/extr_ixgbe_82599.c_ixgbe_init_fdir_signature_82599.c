
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_FDIRCTRL_FLEX_SHIFT ;
 int IXGBE_FDIRCTRL_FULL_THRESH_SHIFT ;
 int IXGBE_FDIRCTRL_MAX_LENGTH_SHIFT ;
 int ixgbe_fdir_enable_82599 (struct ixgbe_hw*,int) ;

s32 ixgbe_init_fdir_signature_82599(struct ixgbe_hw *hw, u32 fdirctrl)
{






 fdirctrl |= (0x6 << IXGBE_FDIRCTRL_FLEX_SHIFT) |
      (0xA << IXGBE_FDIRCTRL_MAX_LENGTH_SHIFT) |
      (4 << IXGBE_FDIRCTRL_FULL_THRESH_SHIFT);


 ixgbe_fdir_enable_82599(hw, fdirctrl);

 return 0;
}
