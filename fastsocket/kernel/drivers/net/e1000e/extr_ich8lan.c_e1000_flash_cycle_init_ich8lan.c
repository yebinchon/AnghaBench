
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flcerr; int dael; int flcdone; int flcinprog; int fldesvalid; } ;
union ich8_hws_flash_status {void* regval; TYPE_1__ hsf_status; } ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_NVM ;
 int ICH_FLASH_HSFSTS ;
 scalar_t__ ICH_FLASH_READ_COMMAND_TIMEOUT ;
 int e_dbg (char*) ;
 void* er16flash (int ) ;
 int ew16flash (int ,void*) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_flash_cycle_init_ich8lan(struct e1000_hw *hw)
{
 union ich8_hws_flash_status hsfsts;
 s32 ret_val = -E1000_ERR_NVM;

 hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);


 if (!hsfsts.hsf_status.fldesvalid) {
  e_dbg("Flash descriptor invalid.  SW Sequencing must be used.\n");
  return -E1000_ERR_NVM;
 }


 hsfsts.hsf_status.flcerr = 1;
 hsfsts.hsf_status.dael = 1;

 ew16flash(ICH_FLASH_HSFSTS, hsfsts.regval);
 if (!hsfsts.hsf_status.flcinprog) {




  hsfsts.hsf_status.flcdone = 1;
  ew16flash(ICH_FLASH_HSFSTS, hsfsts.regval);
  ret_val = 0;
 } else {
  s32 i;




  for (i = 0; i < ICH_FLASH_READ_COMMAND_TIMEOUT; i++) {
   hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);
   if (!hsfsts.hsf_status.flcinprog) {
    ret_val = 0;
    break;
   }
   udelay(1);
  }
  if (!ret_val) {



   hsfsts.hsf_status.flcdone = 1;
   ew16flash(ICH_FLASH_HSFSTS, hsfsts.regval);
  } else {
   e_dbg("Flash controller busy, cannot get access\n");
  }
 }

 return ret_val;
}
