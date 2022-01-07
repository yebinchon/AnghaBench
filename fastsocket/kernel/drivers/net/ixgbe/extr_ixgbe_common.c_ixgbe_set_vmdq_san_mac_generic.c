
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int san_mac_rar_index; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_MPSAR_HI (int) ;
 int IXGBE_MPSAR_LO (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

s32 ixgbe_set_vmdq_san_mac_generic(struct ixgbe_hw *hw, u32 vmdq)
{
 u32 rar = hw->mac.san_mac_rar_index;

 if (vmdq < 32) {
  IXGBE_WRITE_REG(hw, IXGBE_MPSAR_LO(rar), 1 << vmdq);
  IXGBE_WRITE_REG(hw, IXGBE_MPSAR_HI(rar), 0);
 } else {
  IXGBE_WRITE_REG(hw, IXGBE_MPSAR_LO(rar), 0);
  IXGBE_WRITE_REG(hw, IXGBE_MPSAR_HI(rar), 1 << (vmdq - 32));
 }

 return 0;
}
