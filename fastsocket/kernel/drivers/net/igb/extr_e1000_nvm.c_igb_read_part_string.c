
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* read ) (struct e1000_hw*,int,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_INVALID_ARGUMENT ;
 scalar_t__ E1000_ERR_NO_SPACE ;
 scalar_t__ E1000_ERR_NVM_PBA_SECTION ;
 int NVM_PBA_OFFSET_0 ;
 int NVM_PBA_OFFSET_1 ;
 int NVM_PBA_PTR_GUARD ;
 int hw_dbg (char*) ;
 scalar_t__ stub1 (struct e1000_hw*,int,int,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int,int,int*) ;
 scalar_t__ stub3 (struct e1000_hw*,int,int,int*) ;
 scalar_t__ stub4 (struct e1000_hw*,int,int,int*) ;

s32 igb_read_part_string(struct e1000_hw *hw, u8 *part_num, u32 part_num_size)
{
 s32 ret_val;
 u16 nvm_data;
 u16 pointer;
 u16 offset;
 u16 length;

 if (part_num == ((void*)0)) {
  hw_dbg("PBA string buffer was null\n");
  ret_val = E1000_ERR_INVALID_ARGUMENT;
  goto out;
 }

 ret_val = hw->nvm.ops.read(hw, NVM_PBA_OFFSET_0, 1, &nvm_data);
 if (ret_val) {
  hw_dbg("NVM Read Error\n");
  goto out;
 }

 ret_val = hw->nvm.ops.read(hw, NVM_PBA_OFFSET_1, 1, &pointer);
 if (ret_val) {
  hw_dbg("NVM Read Error\n");
  goto out;
 }





 if (nvm_data != NVM_PBA_PTR_GUARD) {
  hw_dbg("NVM PBA number is not stored as string\n");


  if (part_num_size < 11) {
   hw_dbg("PBA string buffer too small\n");
   return E1000_ERR_NO_SPACE;
  }


  part_num[0] = (nvm_data >> 12) & 0xF;
  part_num[1] = (nvm_data >> 8) & 0xF;
  part_num[2] = (nvm_data >> 4) & 0xF;
  part_num[3] = nvm_data & 0xF;
  part_num[4] = (pointer >> 12) & 0xF;
  part_num[5] = (pointer >> 8) & 0xF;
  part_num[6] = '-';
  part_num[7] = 0;
  part_num[8] = (pointer >> 4) & 0xF;
  part_num[9] = pointer & 0xF;


  part_num[10] = '\0';


  for (offset = 0; offset < 10; offset++) {
   if (part_num[offset] < 0xA)
    part_num[offset] += '0';
   else if (part_num[offset] < 0x10)
    part_num[offset] += 'A' - 0xA;
  }

  goto out;
 }

 ret_val = hw->nvm.ops.read(hw, pointer, 1, &length);
 if (ret_val) {
  hw_dbg("NVM Read Error\n");
  goto out;
 }

 if (length == 0xFFFF || length == 0) {
  hw_dbg("NVM PBA number section invalid length\n");
  ret_val = E1000_ERR_NVM_PBA_SECTION;
  goto out;
 }

 if (part_num_size < (((u32)length * 2) - 1)) {
  hw_dbg("PBA string buffer too small\n");
  ret_val = E1000_ERR_NO_SPACE;
  goto out;
 }


 pointer++;
 length--;

 for (offset = 0; offset < length; offset++) {
  ret_val = hw->nvm.ops.read(hw, pointer + offset, 1, &nvm_data);
  if (ret_val) {
   hw_dbg("NVM Read Error\n");
   goto out;
  }
  part_num[offset * 2] = (u8)(nvm_data >> 8);
  part_num[(offset * 2) + 1] = (u8)(nvm_data & 0xFF);
 }
 part_num[offset * 2] = '\0';

out:
 return ret_val;
}
