
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct e1000_nvm_info {scalar_t__ word_size; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int E1000_ERR_NVM ;
 scalar_t__ E1000_NVM_RW_ADDR_SHIFT ;
 scalar_t__ E1000_NVM_RW_REG_DATA ;
 int E1000_NVM_RW_REG_DONE ;
 scalar_t__ E1000_NVM_RW_REG_START ;
 int E1000_SRWR ;
 int E1000_SUCCESS ;
 int hw_dbg (char*) ;
 int rd32 (int ) ;
 int udelay (int) ;
 int wr32 (int ,scalar_t__) ;

__attribute__((used)) static s32 igb_write_nvm_srwr(struct e1000_hw *hw, u16 offset, u16 words,
    u16 *data)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 i, k, eewr = 0;
 u32 attempts = 100000;
 s32 ret_val = E1000_SUCCESS;




 if ((offset >= nvm->word_size) || (words > (nvm->word_size - offset)) ||
     (words == 0)) {
  hw_dbg("nvm parameter(s) out of bounds\n");
  ret_val = -E1000_ERR_NVM;
  goto out;
 }

 for (i = 0; i < words; i++) {
  eewr = ((offset+i) << E1000_NVM_RW_ADDR_SHIFT) |
   (data[i] << E1000_NVM_RW_REG_DATA) |
   E1000_NVM_RW_REG_START;

  wr32(E1000_SRWR, eewr);

  for (k = 0; k < attempts; k++) {
   if (E1000_NVM_RW_REG_DONE &
       rd32(E1000_SRWR)) {
    ret_val = E1000_SUCCESS;
    break;
   }
   udelay(5);
 }

  if (ret_val != E1000_SUCCESS) {
   hw_dbg("Shadow RAM write EEWR timed out\n");
   break;
  }
 }

out:
 return ret_val;
}
