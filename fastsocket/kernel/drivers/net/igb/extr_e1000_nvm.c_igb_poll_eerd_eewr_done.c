
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int E1000_EERD ;
 int E1000_EEWR ;
 scalar_t__ E1000_ERR_NVM ;
 int E1000_NVM_POLL_READ ;
 scalar_t__ E1000_NVM_RW_REG_DONE ;
 scalar_t__ rd32 (int ) ;
 int udelay (int) ;

__attribute__((used)) static s32 igb_poll_eerd_eewr_done(struct e1000_hw *hw, int ee_reg)
{
 u32 attempts = 100000;
 u32 i, reg = 0;
 s32 ret_val = -E1000_ERR_NVM;

 for (i = 0; i < attempts; i++) {
  if (ee_reg == E1000_NVM_POLL_READ)
   reg = rd32(E1000_EERD);
  else
   reg = rd32(E1000_EEWR);

  if (reg & E1000_NVM_RW_REG_DONE) {
   ret_val = 0;
   break;
  }

  udelay(5);
 }

 return ret_val;
}
