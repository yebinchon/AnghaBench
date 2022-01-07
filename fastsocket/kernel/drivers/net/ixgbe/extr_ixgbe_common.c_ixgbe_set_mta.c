
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int* mta_shadow; } ;
struct TYPE_3__ {int mta_in_use; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_1__ addr_ctrl; } ;


 int hw_dbg (struct ixgbe_hw*,char*,int) ;
 int ixgbe_mta_vector (struct ixgbe_hw*,int *) ;

__attribute__((used)) static void ixgbe_set_mta(struct ixgbe_hw *hw, u8 *mc_addr)
{
 u32 vector;
 u32 vector_bit;
 u32 vector_reg;

 hw->addr_ctrl.mta_in_use++;

 vector = ixgbe_mta_vector(hw, mc_addr);
 hw_dbg(hw, " bit-vector = 0x%03X\n", vector);
 vector_reg = (vector >> 5) & 0x7F;
 vector_bit = vector & 0x1F;
 hw->mac.mta_shadow[vector_reg] |= (1 << vector_bit);
}
