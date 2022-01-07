
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char
FlipBits(unsigned char c, int keylen)
{
 unsigned char b = c;
 unsigned char bit = 128;
 int i;
 int j;
 int hunks = (8 / keylen);

 c = 0;
 for (i = 0; i < hunks; i++) {
  for (j = 0; j < keylen; j++) {
   if (b & (bit >> j))
    c |= bit >> (keylen - j - 1);
  }
  bit >>= keylen;
 }
 return c;
}
