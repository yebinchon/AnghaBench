
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_nvm_info {int opcode_bits; int delay_usec; int override; int page_size; int address_bits; int word_size; int type; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int E1000_EECD_ADDR_BITS ;
 int E1000_EECD_SIZE_EX_MASK ;
 int E1000_EECD_SIZE_EX_SHIFT ;
 int EECD ;
 scalar_t__ NVM_WORD_SIZE_BASE_SHIFT ;
 int e1000_nvm_eeprom_spi ;


 int er32 (int ) ;

__attribute__((used)) static s32 e1000_init_nvm_params_80003es2lan(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = er32(EECD);
 u16 size;

 nvm->opcode_bits = 8;
 nvm->delay_usec = 1;
 switch (nvm->override) {
 case 129:
  nvm->page_size = 32;
  nvm->address_bits = 16;
  break;
 case 128:
  nvm->page_size = 8;
  nvm->address_bits = 8;
  break;
 default:
  nvm->page_size = eecd & E1000_EECD_ADDR_BITS ? 32 : 8;
  nvm->address_bits = eecd & E1000_EECD_ADDR_BITS ? 16 : 8;
  break;
 }

 nvm->type = e1000_nvm_eeprom_spi;

 size = (u16)((eecd & E1000_EECD_SIZE_EX_MASK) >>
       E1000_EECD_SIZE_EX_SHIFT);




 size += NVM_WORD_SIZE_BASE_SHIFT;


 if (size > 14)
  size = 14;
 nvm->word_size = 1 << size;

 return 0;
}
