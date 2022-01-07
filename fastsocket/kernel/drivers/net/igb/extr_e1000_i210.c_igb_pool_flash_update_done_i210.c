
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_EECD ;
 scalar_t__ E1000_EECD_FLUDONE_I210 ;
 int E1000_ERR_NVM ;
 scalar_t__ E1000_FLUDONE_ATTEMPTS ;
 int E1000_SUCCESS ;
 scalar_t__ rd32 (int ) ;
 int udelay (int) ;

__attribute__((used)) static s32 igb_pool_flash_update_done_i210(struct e1000_hw *hw)
{
 s32 ret_val = -E1000_ERR_NVM;
 u32 i, reg;

 for (i = 0; i < E1000_FLUDONE_ATTEMPTS; i++) {
  reg = rd32(E1000_EECD);
  if (reg & E1000_EECD_FLUDONE_I210) {
   ret_val = E1000_SUCCESS;
   break;
  }
  udelay(5);
 }

 return ret_val;
}
