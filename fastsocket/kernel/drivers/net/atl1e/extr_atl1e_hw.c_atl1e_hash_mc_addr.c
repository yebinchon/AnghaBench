
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct atl1e_hw {int dummy; } ;


 int ether_crc_le (int,int *) ;

u32 atl1e_hash_mc_addr(struct atl1e_hw *hw, u8 *mc_addr)
{
 u32 crc32;
 u32 value = 0;
 int i;

 crc32 = ether_crc_le(6, mc_addr);
 for (i = 0; i < 32; i++)
  value |= (((crc32 >> i) & 1) << (31 - i));

 return value;
}
