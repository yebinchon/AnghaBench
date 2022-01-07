
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 pde_get_multiple(u32 val, u32 fraction, u32 tolerance)
{
 u32 remainder;
 u32 factor;
 u32 delta;

 if (fraction == 0)
  return 0;

 delta = (val < fraction) ? (fraction - val) : (val - fraction);

 if (delta <= tolerance)

  return 1;

 factor = val / fraction;
 remainder = val % fraction;
 if (remainder > tolerance) {

  if ((fraction - remainder) <= tolerance)

   factor++;
  else
   factor = 0;
 }
 return factor;
}
