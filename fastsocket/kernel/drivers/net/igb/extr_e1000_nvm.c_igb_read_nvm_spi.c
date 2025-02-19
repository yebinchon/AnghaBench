
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int (* acquire ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;} ;
struct e1000_nvm_info {scalar_t__ word_size; int address_bits; int opcode_bits; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int E1000_ERR_NVM ;
 scalar_t__ NVM_A8_OPCODE_SPI ;
 scalar_t__ NVM_READ_OPCODE_SPI ;
 int hw_dbg (char*) ;
 int igb_ready_nvm_eeprom (struct e1000_hw*) ;
 scalar_t__ igb_shift_in_eec_bits (struct e1000_hw*,int) ;
 int igb_shift_out_eec_bits (struct e1000_hw*,scalar_t__,int) ;
 int igb_standby_nvm (struct e1000_hw*) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

s32 igb_read_nvm_spi(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 i = 0;
 s32 ret_val;
 u16 word_in;
 u8 read_opcode = NVM_READ_OPCODE_SPI;




 if ((offset >= nvm->word_size) || (words > (nvm->word_size - offset)) ||
     (words == 0)) {
  hw_dbg("nvm parameter(s) out of bounds\n");
  ret_val = -E1000_ERR_NVM;
  goto out;
 }

 ret_val = nvm->ops.acquire(hw);
 if (ret_val)
  goto out;

 ret_val = igb_ready_nvm_eeprom(hw);
 if (ret_val)
  goto release;

 igb_standby_nvm(hw);

 if ((nvm->address_bits == 8) && (offset >= 128))
  read_opcode |= NVM_A8_OPCODE_SPI;


 igb_shift_out_eec_bits(hw, read_opcode, nvm->opcode_bits);
 igb_shift_out_eec_bits(hw, (u16)(offset*2), nvm->address_bits);





 for (i = 0; i < words; i++) {
  word_in = igb_shift_in_eec_bits(hw, 16);
  data[i] = (word_in >> 8) | (word_in << 8);
 }

release:
 nvm->ops.release(hw);

out:
 return ret_val;
}
