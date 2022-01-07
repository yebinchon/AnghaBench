
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixgb_hw {scalar_t__ eeprom; } ;
struct ixgb_ee_map_type {int device_id; } ;


 int ixgb_check_and_get_eeprom_data (struct ixgb_hw*) ;
 int le16_to_cpu (int ) ;

u16
ixgb_get_ee_device_id(struct ixgb_hw *hw)
{
 struct ixgb_ee_map_type *ee_map = (struct ixgb_ee_map_type *)hw->eeprom;

 if (ixgb_check_and_get_eeprom_data(hw) == 1)
  return (le16_to_cpu(ee_map->device_id));

 return (0);
}
