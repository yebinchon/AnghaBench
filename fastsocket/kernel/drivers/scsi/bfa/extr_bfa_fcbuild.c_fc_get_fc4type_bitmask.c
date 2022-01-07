
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __be32 ;


 int cpu_to_be32 (int) ;

void
fc_get_fc4type_bitmask(u8 fc4_type, u8 *bit_mask)
{
 u8 index;
 __be32 *ptr = (__be32 *) bit_mask;
 u32 type_value;





 index = fc4_type >> 5;
 type_value = 1 << (fc4_type % 32);
 ptr[index] = cpu_to_be32(type_value);

}
