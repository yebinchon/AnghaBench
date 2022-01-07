
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixgb_hw {scalar_t__ eeprom; } ;
struct ixgb_ee_map_type {int * mac_addr; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT2 (char*,int,int ) ;
 int IXGB_ETH_LENGTH_OF_ADDRESS ;
 int ixgb_check_and_get_eeprom_data (struct ixgb_hw*) ;

void
ixgb_get_ee_mac_addr(struct ixgb_hw *hw,
   u8 *mac_addr)
{
 int i;
 struct ixgb_ee_map_type *ee_map = (struct ixgb_ee_map_type *)hw->eeprom;

 DEBUGFUNC("ixgb_get_ee_mac_addr");

 if (ixgb_check_and_get_eeprom_data(hw) == 1) {
  for (i = 0; i < IXGB_ETH_LENGTH_OF_ADDRESS; i++) {
   mac_addr[i] = ee_map->mac_addr[i];
   DEBUGOUT2("mac(%d) = %.2X\n", i, mac_addr[i]);
  }
 }
}
