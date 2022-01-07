
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ e1000_read_flash_data_ich8lan (struct e1000_hw*,int ,int,scalar_t__*) ;

__attribute__((used)) static s32 e1000_read_flash_byte_ich8lan(struct e1000_hw *hw, u32 offset,
      u8 *data)
{
 s32 ret_val;
 u16 word = 0;

 ret_val = e1000_read_flash_data_ich8lan(hw, offset, 1, &word);
 if (ret_val)
  return ret_val;

 *data = (u8)word;

 return 0;
}
