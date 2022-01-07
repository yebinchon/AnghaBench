
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



u32 ir_extract_bits(u32 data, u32 mask)
{
 u32 vbit = 1, value = 0;

 do {
     if (mask&1) {
  if (data&1)
   value |= vbit;
  vbit<<=1;
     }
     data>>=1;
 } while (mask>>=1);

 return value;
}
