
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;
typedef int ieee754dp ;


 int CLEARCX ;
 int DPNORMRET1 (int,int,int,char*,int) ;
 int DP_MBITS ;
 int XDPSRSX1 () ;
 int ieee754dp_one (int) ;
 int ieee754dp_ten (int) ;
 int ieee754dp_zero (int ) ;

ieee754dp ieee754dp_flong(s64 x)
{
 u64 xm;
 int xe;
 int xs;

 CLEARCX;

 if (x == 0)
  return ieee754dp_zero(0);
 if (x == 1 || x == -1)
  return ieee754dp_one(x < 0);
 if (x == 10 || x == -10)
  return ieee754dp_ten(x < 0);

 xs = (x < 0);
 if (xs) {
  if (x == (1ULL << 63))
   xm = (1ULL << 63);
  else
   xm = -x;
 } else {
  xm = x;
 }


 xe = DP_MBITS + 3;
 if (xm >> (DP_MBITS + 1 + 3)) {

  while (xm >> (DP_MBITS + 1 + 3)) {
   XDPSRSX1();
  }
 } else {

  while ((xm >> (DP_MBITS + 3)) == 0) {
   xm <<= 1;
   xe--;
  }
 }
 DPNORMRET1(xs, xe, xm, "dp_flong", x);
}
