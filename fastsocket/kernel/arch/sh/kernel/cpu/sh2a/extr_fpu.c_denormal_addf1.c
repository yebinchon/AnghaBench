
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int denormal_addf1(unsigned int ix, unsigned int iy)
{
 int frac;
 int exp;

 if (ix < 0x00800000)
  return ix + iy;

 exp = (ix & 0x7f800000) >> 23;
 if (exp - 1 > 31)
  return ix;
 iy >>= exp - 1;
 if (iy == 0)
   return ix;

 frac = (ix & 0x007fffff) | 0x00800000;
 frac += iy;
 if (frac >= 0x01000000) {
  frac >>= 1;
  ++exp;
 }

 return (exp << 23) | (frac & 0x007fffff);
}
