
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* check_reset_block ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int HV_OEM_BITS ;
 int HV_OEM_BITS_LPLU ;
 int HV_OEM_BITS_RESTART_AN ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int ) ;
 int stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_set_lplu_state_pchlan(struct e1000_hw *hw, bool active)
{
 s32 ret_val;
 u16 oem_reg;

 ret_val = e1e_rphy(hw, HV_OEM_BITS, &oem_reg);
 if (ret_val)
  return ret_val;

 if (active)
  oem_reg |= HV_OEM_BITS_LPLU;
 else
  oem_reg &= ~HV_OEM_BITS_LPLU;

 if (!hw->phy.ops.check_reset_block(hw))
  oem_reg |= HV_OEM_BITS_RESTART_AN;

 return e1e_wphy(hw, HV_OEM_BITS, oem_reg);
}
