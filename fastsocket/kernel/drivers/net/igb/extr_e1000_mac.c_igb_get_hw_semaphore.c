
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ word_size; } ;
struct e1000_hw {TYPE_1__ nvm; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_NVM ;
 int E1000_SWSM ;
 int E1000_SWSM_SMBI ;
 int E1000_SWSM_SWESMBI ;
 int hw_dbg (char*) ;
 int igb_put_hw_semaphore (struct e1000_hw*) ;
 int rd32 (int ) ;
 int udelay (int) ;
 int wr32 (int ,int) ;

s32 igb_get_hw_semaphore(struct e1000_hw *hw)
{
 u32 swsm;
 s32 ret_val = 0;
 s32 timeout = hw->nvm.word_size + 1;
 s32 i = 0;


 while (i < timeout) {
  swsm = rd32(E1000_SWSM);
  if (!(swsm & E1000_SWSM_SMBI))
   break;

  udelay(50);
  i++;
 }

 if (i == timeout) {
  hw_dbg("Driver can't access device - SMBI bit is set.\n");
  ret_val = -E1000_ERR_NVM;
  goto out;
 }


 for (i = 0; i < timeout; i++) {
  swsm = rd32(E1000_SWSM);
  wr32(E1000_SWSM, swsm | E1000_SWSM_SWESMBI);


  if (rd32(E1000_SWSM) & E1000_SWSM_SWESMBI)
   break;

  udelay(50);
 }

 if (i == timeout) {

  igb_put_hw_semaphore(hw);
  hw_dbg("Driver can't access the NVM\n");
  ret_val = -E1000_ERR_NVM;
  goto out;
 }

out:
 return ret_val;
}
