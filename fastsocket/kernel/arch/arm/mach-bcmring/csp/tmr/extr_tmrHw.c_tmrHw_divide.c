
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int tmrHw_divide(int num, int denom)
{
 int r;
 int t = 1;



 while ((denom & 0x40000000) == 0) {
  denom = denom << 1;
  t = t << 1;
 }


 r = 0;

 do {

  if ((num - denom) >= 0) {

   num = num - denom;
   r = r + t;
  }

  denom = denom >> 1;
  t = t >> 1;
 } while (t != 0);
 return r;
}
