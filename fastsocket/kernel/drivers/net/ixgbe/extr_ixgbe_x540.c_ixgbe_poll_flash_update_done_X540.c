
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_EEC ;
 scalar_t__ IXGBE_EEC_FLUDONE ;
 scalar_t__ IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_FLUDONE_ATTEMPTS ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_poll_flash_update_done_X540(struct ixgbe_hw *hw)
{
 u32 i;
 u32 reg;
 s32 status = IXGBE_ERR_EEPROM;

 for (i = 0; i < IXGBE_FLUDONE_ATTEMPTS; i++) {
  reg = IXGBE_READ_REG(hw, IXGBE_EEC);
  if (reg & IXGBE_EEC_FLUDONE) {
   status = 0;
   break;
  }
  udelay(5);
 }
 return status;
}
