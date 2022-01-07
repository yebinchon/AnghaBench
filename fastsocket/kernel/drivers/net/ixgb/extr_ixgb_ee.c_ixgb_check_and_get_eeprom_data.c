
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgb_hw {scalar_t__ eeprom; } ;
struct ixgb_ee_map_type {int init_ctrl_reg_1; } ;


 int EEPROM_ICW1_SIGNATURE_MASK ;
 int EEPROM_ICW1_SIGNATURE_VALID ;
 int cpu_to_le16 (int ) ;
 int ixgb_get_eeprom_data (struct ixgb_hw*) ;

__attribute__((used)) static bool
ixgb_check_and_get_eeprom_data (struct ixgb_hw* hw)
{
 struct ixgb_ee_map_type *ee_map = (struct ixgb_ee_map_type *)hw->eeprom;

 if ((ee_map->init_ctrl_reg_1 & cpu_to_le16(EEPROM_ICW1_SIGNATURE_MASK))
     == cpu_to_le16(EEPROM_ICW1_SIGNATURE_VALID)) {
  return (1);
 } else {
  return ixgb_get_eeprom_data(hw);
 }
}
