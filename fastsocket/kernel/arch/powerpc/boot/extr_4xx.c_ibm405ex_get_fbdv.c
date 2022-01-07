
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* ibm405ex_fbdv_multi_bits ;

u32 ibm405ex_get_fbdv(unsigned long cpr_fbdv)
{
 u32 index;

 for (index = 0; index < ARRAY_SIZE(ibm405ex_fbdv_multi_bits); index++)
  if (cpr_fbdv == (u32)ibm405ex_fbdv_multi_bits[index])
   return index + 1;

 return 0;
}
