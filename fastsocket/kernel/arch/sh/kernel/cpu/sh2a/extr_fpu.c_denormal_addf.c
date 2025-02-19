
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int denormal_addf1 (unsigned int,unsigned int) ;
 unsigned int denormal_subf1 (unsigned int,unsigned int) ;

__attribute__((used)) static int denormal_addf(int hx, int hy)
{
 unsigned int ix, iy;
 int sign;

 if ((hx ^ hy) & 0x80000000) {
  sign = hx & 0x80000000;
  ix = hx & 0x7fffffff;
  iy = hy & 0x7fffffff;
  if (iy < 0x00800000) {
   ix = denormal_subf1(ix, iy);
   if ((int) ix < 0) {
    ix = -ix;
    sign ^= 0x80000000;
   }
  } else {
   ix = denormal_subf1(iy, ix);
   sign ^= 0x80000000;
  }
 } else {
  sign = hx & 0x80000000;
  ix = hx & 0x7fffffff;
  iy = hy & 0x7fffffff;
  if (iy < 0x00800000)
   ix = denormal_addf1(ix, iy);
  else
   ix = denormal_addf1(iy, ix);
 }

 return sign | ix;
}
