
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int printbinary(char *buf, unsigned long x, int nbits)
{
 unsigned long mask = 1UL << (nbits - 1);
 while (mask != 0) {
  *buf++ = (mask & x ? '1' : '0');
  mask >>= 1;
 }
 *buf = '\0';

 return nbits;
}
