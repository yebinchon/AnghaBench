
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int * eeprom; } ;


 size_t EEPROM_PBA_1_2_REG ;
 size_t EEPROM_PBA_3_4_REG ;
 int ixgb_check_and_get_eeprom_data (struct ixgb_hw*) ;
 int le16_to_cpu (int ) ;

u32
ixgb_get_ee_pba_number(struct ixgb_hw *hw)
{
 if (ixgb_check_and_get_eeprom_data(hw) == 1)
  return (le16_to_cpu(hw->eeprom[EEPROM_PBA_1_2_REG])
   | (le16_to_cpu(hw->eeprom[EEPROM_PBA_3_4_REG])<<16));

 return(0);
}
