
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* exp2s ;

__attribute__((used)) static unsigned int eexp2(unsigned int s)
{
 int exp, pwr;
 unsigned int mant, frac;


 exp = ((s >> 23) & 0xff) - 127;
 if (exp > 7) {

  if (exp == 128 && (s & 0x7fffff) != 0)
   return s | 0x400000;

  return (s & 0x80000000)? 0: 0x7f800000;
 }
 if (exp < -23)
  return 0x3f800000;


 pwr = (s & 0x7fffff) | 0x800000;
 if (exp > 0)
  pwr <<= exp;
 else
  pwr >>= -exp;
 if (s & 0x80000000)
  pwr = -pwr;


 exp = (pwr >> 23) + 126;
 if (exp >= 254)
  return 0x7f800000;
 if (exp < -23)
  return 0;


 mant = exp2s[(pwr >> 20) & 7];


 asm("mulhwu %0,%1,%2" : "=r" (frac)
     : "r" (pwr << 12), "r" (0x172b83ff));
 asm("mulhwu %0,%1,%2" : "=r" (frac) : "r" (frac), "r" (mant));
 mant += frac;

 if (exp >= 0)
  return mant + (exp << 23);


 exp = -exp;
 mant += 1 << (exp - 1);
 return mant >> exp;
}
