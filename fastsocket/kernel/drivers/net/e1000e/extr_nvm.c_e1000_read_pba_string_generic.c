
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_INVALID_ARGUMENT ;
 scalar_t__ E1000_ERR_NO_SPACE ;
 scalar_t__ E1000_ERR_NVM_PBA_SECTION ;
 scalar_t__ E1000_PBANUM_LENGTH ;
 int NVM_PBA_OFFSET_0 ;
 int NVM_PBA_OFFSET_1 ;
 int NVM_PBA_PTR_GUARD ;
 scalar_t__ e1000_read_nvm (struct e1000_hw*,int,int,int*) ;
 int e_dbg (char*) ;

s32 e1000_read_pba_string_generic(struct e1000_hw *hw, u8 *pba_num,
      u32 pba_num_size)
{
 s32 ret_val;
 u16 nvm_data;
 u16 pba_ptr;
 u16 offset;
 u16 length;

 if (pba_num == ((void*)0)) {
  e_dbg("PBA string buffer was null\n");
  return -E1000_ERR_INVALID_ARGUMENT;
 }

 ret_val = e1000_read_nvm(hw, NVM_PBA_OFFSET_0, 1, &nvm_data);
 if (ret_val) {
  e_dbg("NVM Read Error\n");
  return ret_val;
 }

 ret_val = e1000_read_nvm(hw, NVM_PBA_OFFSET_1, 1, &pba_ptr);
 if (ret_val) {
  e_dbg("NVM Read Error\n");
  return ret_val;
 }





 if (nvm_data != NVM_PBA_PTR_GUARD) {
  e_dbg("NVM PBA number is not stored as string\n");


  if (pba_num_size < E1000_PBANUM_LENGTH) {
   e_dbg("PBA string buffer too small\n");
   return E1000_ERR_NO_SPACE;
  }


  pba_num[0] = (nvm_data >> 12) & 0xF;
  pba_num[1] = (nvm_data >> 8) & 0xF;
  pba_num[2] = (nvm_data >> 4) & 0xF;
  pba_num[3] = nvm_data & 0xF;
  pba_num[4] = (pba_ptr >> 12) & 0xF;
  pba_num[5] = (pba_ptr >> 8) & 0xF;
  pba_num[6] = '-';
  pba_num[7] = 0;
  pba_num[8] = (pba_ptr >> 4) & 0xF;
  pba_num[9] = pba_ptr & 0xF;


  pba_num[10] = '\0';


  for (offset = 0; offset < 10; offset++) {
   if (pba_num[offset] < 0xA)
    pba_num[offset] += '0';
   else if (pba_num[offset] < 0x10)
    pba_num[offset] += 'A' - 0xA;
  }

  return 0;
 }

 ret_val = e1000_read_nvm(hw, pba_ptr, 1, &length);
 if (ret_val) {
  e_dbg("NVM Read Error\n");
  return ret_val;
 }

 if (length == 0xFFFF || length == 0) {
  e_dbg("NVM PBA number section invalid length\n");
  return -E1000_ERR_NVM_PBA_SECTION;
 }

 if (pba_num_size < (((u32)length * 2) - 1)) {
  e_dbg("PBA string buffer too small\n");
  return -E1000_ERR_NO_SPACE;
 }


 pba_ptr++;
 length--;

 for (offset = 0; offset < length; offset++) {
  ret_val = e1000_read_nvm(hw, pba_ptr + offset, 1, &nvm_data);
  if (ret_val) {
   e_dbg("NVM Read Error\n");
   return ret_val;
  }
  pba_num[offset * 2] = (u8)(nvm_data >> 8);
  pba_num[(offset * 2) + 1] = (u8)(nvm_data & 0xFF);
 }
 pba_num[offset * 2] = '\0';

 return 0;
}
