
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int (* clear_rar ) (struct ixgbe_hw*,scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ num_rar_entries; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 scalar_t__ IXGBE_CLEAR_VMDQ_ALL ;
 int IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_MPSAR_HI (scalar_t__) ;
 int IXGBE_MPSAR_LO (scalar_t__) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int hw_dbg (struct ixgbe_hw*,char*,scalar_t__) ;
 int stub1 (struct ixgbe_hw*,scalar_t__) ;

s32 ixgbe_clear_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
{
 u32 mpsar_lo, mpsar_hi;
 u32 rar_entries = hw->mac.num_rar_entries;


 if (rar >= rar_entries) {
  hw_dbg(hw, "RAR index %d is out of range.\n", rar);
  return IXGBE_ERR_INVALID_ARGUMENT;
 }

 mpsar_lo = IXGBE_READ_REG(hw, IXGBE_MPSAR_LO(rar));
 mpsar_hi = IXGBE_READ_REG(hw, IXGBE_MPSAR_HI(rar));

 if (!mpsar_lo && !mpsar_hi)
  goto done;

 if (vmdq == IXGBE_CLEAR_VMDQ_ALL) {
  if (mpsar_lo) {
   IXGBE_WRITE_REG(hw, IXGBE_MPSAR_LO(rar), 0);
   mpsar_lo = 0;
  }
  if (mpsar_hi) {
   IXGBE_WRITE_REG(hw, IXGBE_MPSAR_HI(rar), 0);
   mpsar_hi = 0;
  }
 } else if (vmdq < 32) {
  mpsar_lo &= ~(1 << vmdq);
  IXGBE_WRITE_REG(hw, IXGBE_MPSAR_LO(rar), mpsar_lo);
 } else {
  mpsar_hi &= ~(1 << (vmdq - 32));
  IXGBE_WRITE_REG(hw, IXGBE_MPSAR_HI(rar), mpsar_hi);
 }


 if (mpsar_lo == 0 && mpsar_hi == 0 && rar != 0)
  hw->mac.ops.clear_rar(hw, rar);
done:
 return 0;
}
