
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int rsts; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;
struct TYPE_6__ {int type; } ;
struct ixgbe_hw {TYPE_2__ mbx; TYPE_3__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_MBX ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFLRE (int) ;
 int IXGBE_VFLREC (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;



__attribute__((used)) static s32 ixgbe_check_for_rst_pf(struct ixgbe_hw *hw, u16 vf_number)
{
 u32 reg_offset = (vf_number < 32) ? 0 : 1;
 u32 vf_shift = vf_number % 32;
 u32 vflre = 0;
 s32 ret_val = IXGBE_ERR_MBX;

 switch (hw->mac.type) {
 case 129:
  vflre = IXGBE_READ_REG(hw, IXGBE_VFLRE(reg_offset));
  break;
 case 128:
  vflre = IXGBE_READ_REG(hw, IXGBE_VFLREC(reg_offset));
  break;
 default:
  break;
 }

 if (vflre & (1 << vf_shift)) {
  ret_val = 0;
  IXGBE_WRITE_REG(hw, IXGBE_VFLREC(reg_offset), (1 << vf_shift));
  hw->mbx.stats.rsts++;
 }

 return ret_val;
}
