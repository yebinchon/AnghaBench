
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct e1000_eeprom_info {int opcode_bits; int address_bits; int page_size; } ;
struct e1000_hw {struct e1000_eeprom_info eeprom; } ;
typedef int s32 ;


 int E1000_ERR_EEPROM ;
 int E1000_SUCCESS ;
 int EEPROM_A8_OPCODE_SPI ;
 int EEPROM_WREN_OPCODE_SPI ;
 int EEPROM_WRITE_OPCODE_SPI ;
 int e1000_shift_out_ee_bits (struct e1000_hw*,int,int) ;
 scalar_t__ e1000_spi_eeprom_ready (struct e1000_hw*) ;
 int e1000_standby_eeprom (struct e1000_hw*) ;
 int e_dbg (char*) ;

__attribute__((used)) static s32 e1000_write_eeprom_spi(struct e1000_hw *hw, u16 offset, u16 words,
      u16 *data)
{
 struct e1000_eeprom_info *eeprom = &hw->eeprom;
 u16 widx = 0;

 e_dbg("e1000_write_eeprom_spi");

 while (widx < words) {
  u8 write_opcode = EEPROM_WRITE_OPCODE_SPI;

  if (e1000_spi_eeprom_ready(hw))
   return -E1000_ERR_EEPROM;

  e1000_standby_eeprom(hw);


  e1000_shift_out_ee_bits(hw, EEPROM_WREN_OPCODE_SPI,
     eeprom->opcode_bits);

  e1000_standby_eeprom(hw);


  if ((eeprom->address_bits == 8) && (offset >= 128))
   write_opcode |= EEPROM_A8_OPCODE_SPI;


  e1000_shift_out_ee_bits(hw, write_opcode, eeprom->opcode_bits);

  e1000_shift_out_ee_bits(hw, (u16) ((offset + widx) * 2),
     eeprom->address_bits);




  while (widx < words) {
   u16 word_out = data[widx];
   word_out = (word_out >> 8) | (word_out << 8);
   e1000_shift_out_ee_bits(hw, word_out, 16);
   widx++;





   if ((((offset + widx) * 2) % eeprom->page_size) == 0) {
    e1000_standby_eeprom(hw);
    break;
   }
  }
 }

 return E1000_SUCCESS;
}
