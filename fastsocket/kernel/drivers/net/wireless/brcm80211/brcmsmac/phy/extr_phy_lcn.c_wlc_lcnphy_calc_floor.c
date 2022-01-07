
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;



__attribute__((used)) static int wlc_lcnphy_calc_floor(s16 coeff_x, int type)
{
 int k;
 k = 0;
 if (type == 0) {
  if (coeff_x < 0)
   k = (coeff_x - 1) / 2;
  else
   k = coeff_x / 2;
 }

 if (type == 1) {
  if ((coeff_x + 1) < 0)
   k = (coeff_x) / 2;
  else
   k = (coeff_x + 1) / 2;
 }
 return k;
}
