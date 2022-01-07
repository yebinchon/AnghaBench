
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static inline u32 ath5k_hw_bitswap(u32 val, unsigned int bits)
{
 u32 retval = 0, bit, i;

 for (i = 0; i < bits; i++) {
  bit = (val >> i) & 1;
  retval = (retval << 1) | bit;
 }

 return retval;
}
