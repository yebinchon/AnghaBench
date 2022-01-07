
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void qeth_l3_convert_addr_to_bits(u8 *addr, u8 *bits, int len)
{
 int i, j;
 u8 octet;

 for (i = 0; i < len; ++i) {
  octet = addr[i];
  for (j = 7; j >= 0; --j) {
   bits[i*8 + j] = octet & 1;
   octet >>= 1;
  }
 }
}
