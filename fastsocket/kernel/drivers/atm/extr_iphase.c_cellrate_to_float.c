
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int M_BITS ;
 int M_MASK ;
 int NZ ;

__attribute__((used)) static u16
cellrate_to_float(u32 cr)
{






  u16 flot;
  u32 tmp = cr & 0x00ffffff;
  int i = 0;
  if (cr == 0)
     return 0;
  while (tmp != 1) {
     tmp >>= 1;
     i++;
  }
  if (i == 9)
     flot = 0x4000 | (i << 9) | (cr & 0x1ff);
  else if (i < 9)
     flot = 0x4000 | (i << 9) | ((cr << (9 - i)) & 0x1ff);
  else
     flot = 0x4000 | (i << 9) | ((cr >> (i - 9)) & 0x1ff);
  return flot;
}
