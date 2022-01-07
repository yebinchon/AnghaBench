
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



u32 ath9k_hw_reverse_bits(u32 val, u32 n)
{
 u32 retval;
 int i;

 for (i = 0, retval = 0; i < n; i++) {
  retval = (retval << 1) | (val & 1);
  val >>= 1;
 }
 return retval;
}
