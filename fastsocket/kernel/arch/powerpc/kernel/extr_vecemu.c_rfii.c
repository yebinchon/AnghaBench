
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int rfii(unsigned int x)
{
 int exp, mask;

 exp = ((x >> 23) & 0xff) - 127;
 if (exp == 128 && (x & 0x7fffff) != 0)
  return x | 0x400000;
 if (exp >= 23)
  return x;
 if ((x & 0x7fffffff) == 0)
  return x;
 if (exp < 0)

  return (x & 0x80000000) | 0x3f800000;
 mask = 0x7fffff >> exp;


 return (x + mask) & ~mask;
}
