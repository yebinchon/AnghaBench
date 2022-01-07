
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long long denormal_subd1(unsigned long long ix, unsigned long long iy)
{
 long long frac;
 int exp;

 if (ix < 0x0010000000000000LL)
  return ix - iy;

 exp = (ix & 0x7ff0000000000000LL) >> 52;
 if (exp - 1 > 63)
  return ix;
 iy >>= exp - 1;
 if (iy == 0)
  return ix;

 frac = (ix & 0x000fffffffffffffLL) | 0x0010000000000000LL;
 frac -= iy;
 while (frac < 0x0010000000000000LL) {
  if (--exp == 0)
   return frac;
  frac <<= 1;
 }

 return ((long long)exp << 52) | (frac & 0x000fffffffffffffLL);
}
