
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int fls (int) ;

__attribute__((used)) static int find_highest_bits(int *dat)
{
 u32 bits, bitnum;
 int i;


 for (i = 7; i >= 0 ; i--) {
  bits = dat[i];
  if (bits) {
   bitnum = fls(bits);
   return i * 32 + bitnum - 1;
  }
 }

 return -1;
}
