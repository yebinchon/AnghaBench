
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int reverse_bits(int i)
{
 int z, j;
 z = 0;

 for (j = 0; j < 8; j++) {
  if ((i & (1 << j)) != 0)
   z |= 1 << (7 - j);
 }
 return z;
}
