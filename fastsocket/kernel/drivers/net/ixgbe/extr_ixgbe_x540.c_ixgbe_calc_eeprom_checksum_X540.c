
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ word_size; } ;
struct ixgbe_hw {TYPE_1__ eeprom; } ;


 scalar_t__ IXGBE_EEPROM_CHECKSUM ;
 scalar_t__ IXGBE_EEPROM_SUM ;
 scalar_t__ IXGBE_FW_PTR ;
 scalar_t__ IXGBE_OPTION_ROM_PTR ;
 scalar_t__ IXGBE_PCIE_ANALOG_PTR ;
 scalar_t__ IXGBE_PHY_PTR ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_read_eerd_generic (struct ixgbe_hw*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static u16 ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
{
 u16 i;
 u16 j;
 u16 checksum = 0;
 u16 length = 0;
 u16 pointer = 0;
 u16 word = 0;
 for (i = 0; i < IXGBE_EEPROM_CHECKSUM; i++) {
  if (ixgbe_read_eerd_generic(hw, i, &word) != 0) {
   hw_dbg(hw, "EEPROM read failed\n");
   break;
  }
  checksum += word;
 }





 for (i = IXGBE_PCIE_ANALOG_PTR; i < IXGBE_FW_PTR; i++) {
  if (i == IXGBE_PHY_PTR || i == IXGBE_OPTION_ROM_PTR)
   continue;

  if (ixgbe_read_eerd_generic(hw, i, &pointer) != 0) {
   hw_dbg(hw, "EEPROM read failed\n");
   break;
  }


  if (pointer == 0xFFFF || pointer == 0 ||
      pointer >= hw->eeprom.word_size)
   continue;

  if (ixgbe_read_eerd_generic(hw, pointer, &length) != 0) {
   hw_dbg(hw, "EEPROM read failed\n");
   break;
  }


  if (length == 0xFFFF || length == 0 ||
      (pointer + length) >= hw->eeprom.word_size)
   continue;

  for (j = pointer+1; j <= pointer+length; j++) {
   if (ixgbe_read_eerd_generic(hw, j, &word) != 0) {
    hw_dbg(hw, "EEPROM read failed\n");
    break;
   }
   checksum += word;
  }
 }

 checksum = (u16)IXGBE_EEPROM_SUM - checksum;

 return checksum;
}
