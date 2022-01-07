
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_NVM ;
 scalar_t__ e1000_write_flash_byte_ich8lan (struct e1000_hw*,int ,int ) ;
 int e_dbg (char*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_retry_write_flash_byte_ich8lan(struct e1000_hw *hw,
      u32 offset, u8 byte)
{
 s32 ret_val;
 u16 program_retries;

 ret_val = e1000_write_flash_byte_ich8lan(hw, offset, byte);
 if (!ret_val)
  return ret_val;

 for (program_retries = 0; program_retries < 100; program_retries++) {
  e_dbg("Retrying Byte %2.2X at offset %u\n", byte, offset);
  usleep_range(100, 200);
  ret_val = e1000_write_flash_byte_ich8lan(hw, offset, byte);
  if (!ret_val)
   break;
 }
 if (program_retries == 100)
  return -E1000_ERR_NVM;

 return 0;
}
