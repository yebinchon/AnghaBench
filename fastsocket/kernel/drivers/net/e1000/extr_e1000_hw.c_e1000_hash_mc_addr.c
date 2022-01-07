
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int mc_filter_type; } ;



u32 e1000_hash_mc_addr(struct e1000_hw *hw, u8 *mc_addr)
{
 u32 hash_value = 0;




 switch (hw->mc_filter_type) {




 case 0:

  hash_value = ((mc_addr[4] >> 4) | (((u16) mc_addr[5]) << 4));
  break;
 case 1:

  hash_value = ((mc_addr[4] >> 3) | (((u16) mc_addr[5]) << 5));
  break;
 case 2:

  hash_value = ((mc_addr[4] >> 2) | (((u16) mc_addr[5]) << 6));
  break;
 case 3:

  hash_value = ((mc_addr[4]) | (((u16) mc_addr[5]) << 8));
  break;
 }

 hash_value &= 0xFFF;
 return hash_value;
}
