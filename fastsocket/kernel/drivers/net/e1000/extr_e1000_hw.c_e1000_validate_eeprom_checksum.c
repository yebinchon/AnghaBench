
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct e1000_hw {int subsystem_vendor_id; } ;
typedef int s32 ;


 int E1000_ERR_EEPROM ;
 int E1000_SUCCESS ;
 scalar_t__ EEPROM_CHECKSUM_REG ;
 scalar_t__ EEPROM_SUM ;
 scalar_t__ e1000_read_eeprom (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;
 int e_dbg (char*) ;

s32 e1000_validate_eeprom_checksum(struct e1000_hw *hw)
{
 u16 checksum = 0;
 u16 i, eeprom_data;

 e_dbg("e1000_validate_eeprom_checksum");

 for (i = 0; i < (EEPROM_CHECKSUM_REG + 1); i++) {
  if (e1000_read_eeprom(hw, i, 1, &eeprom_data) < 0) {
   e_dbg("EEPROM Read Error\n");
   return -E1000_ERR_EEPROM;
  }
  checksum += eeprom_data;
 }







 if (checksum == (u16) EEPROM_SUM)
  return E1000_SUCCESS;
 else {
  e_dbg("EEPROM Checksum Invalid\n");
  return -E1000_ERR_EEPROM;
 }
}
