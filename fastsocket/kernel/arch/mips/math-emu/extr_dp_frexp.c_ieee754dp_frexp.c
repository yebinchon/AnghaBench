
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int CLEARCX ;
 int COMPXDP ;
 int DPDNORMX ;
 scalar_t__ DP_EBIAS ;
 int DP_HIDDEN_BIT ;
 int EXPLODEXDP ;






 int builddp (int ,scalar_t__,int) ;
 int xc ;
 int xe ;
 int xm ;
 int xs ;

ieee754dp ieee754dp_frexp(ieee754dp x, int *eptr)
{
 COMPXDP;
 CLEARCX;
 EXPLODEXDP;

 switch (xc) {
 case 129:
 case 130:
 case 132:
 case 128:
  *eptr = 0;
  return x;
 case 133:
  DPDNORMX;
  break;
 case 131:
  break;
 }
 *eptr = xe + 1;
 return builddp(xs, -1 + DP_EBIAS, xm & ~DP_HIDDEN_BIT);
}
