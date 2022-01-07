
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixgb_hw {scalar_t__ eeprom; } ;
struct ixgb_ee_map_type {int init_ctrl_reg_1; } ;


 int EEPROM_EWDS_OPCODE ;
 int EEPROM_EWEN_OPCODE ;
 int EEPROM_ICW1_SIGNATURE_CLEAR ;
 int EEPROM_WRITE_OPCODE ;
 int cpu_to_le16 (int ) ;
 int ixgb_cleanup_eeprom (struct ixgb_hw*) ;
 int ixgb_setup_eeprom (struct ixgb_hw*) ;
 int ixgb_shift_out_bits (struct ixgb_hw*,int ,int) ;
 int ixgb_standby_eeprom (struct ixgb_hw*) ;
 int ixgb_wait_eeprom_command (struct ixgb_hw*) ;

void
ixgb_write_eeprom(struct ixgb_hw *hw, u16 offset, u16 data)
{
 struct ixgb_ee_map_type *ee_map = (struct ixgb_ee_map_type *)hw->eeprom;


 ixgb_setup_eeprom(hw);




 ixgb_shift_out_bits(hw, EEPROM_EWEN_OPCODE, 5);
 ixgb_shift_out_bits(hw, 0, 4);


 ixgb_standby_eeprom(hw);


 ixgb_shift_out_bits(hw, EEPROM_WRITE_OPCODE, 3);
 ixgb_shift_out_bits(hw, offset, 6);


 ixgb_shift_out_bits(hw, data, 16);

 ixgb_wait_eeprom_command(hw);


 ixgb_standby_eeprom(hw);





 ixgb_shift_out_bits(hw, EEPROM_EWDS_OPCODE, 5);
 ixgb_shift_out_bits(hw, 0, 4);


 ixgb_cleanup_eeprom(hw);


 ee_map->init_ctrl_reg_1 = cpu_to_le16(EEPROM_ICW1_SIGNATURE_CLEAR);

 return;
}
