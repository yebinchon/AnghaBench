
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SWFW_REGSMP ;
 int IXGBE_SWFW_SYNC ;
 int IXGBE_SWSM ;
 scalar_t__ IXGBE_SWSM_SMBI ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_get_swfw_sync_semaphore(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_ERR_EEPROM;
 u32 timeout = 2000;
 u32 i;
 u32 swsm;


 for (i = 0; i < timeout; i++) {




  swsm = IXGBE_READ_REG(hw, IXGBE_SWSM);
  if (!(swsm & IXGBE_SWSM_SMBI)) {
   status = 0;
   break;
  }
  udelay(50);
 }


 if (status) {
  for (i = 0; i < timeout; i++) {
   swsm = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC);
   if (!(swsm & IXGBE_SWFW_REGSMP))
    break;

   udelay(50);
  }
 } else {
  hw_dbg(hw, "Software semaphore SMBI between device drivers "
             "not granted.\n");
 }

 return status;
}
