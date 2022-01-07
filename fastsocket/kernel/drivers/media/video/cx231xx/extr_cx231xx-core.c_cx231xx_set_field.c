
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



u32 cx231xx_set_field(u32 field_mask, u32 data)
{
 u32 temp;

 for (temp = field_mask; (temp & 1) == 0; temp >>= 1)
  data <<= 1;

 return data;
}
