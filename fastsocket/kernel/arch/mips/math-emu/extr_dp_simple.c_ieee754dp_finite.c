
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 scalar_t__ DPBEXP (int ) ;
 scalar_t__ DP_EBIAS ;
 scalar_t__ DP_EMAX ;

int ieee754dp_finite(ieee754dp x)
{
 return DPBEXP(x) != DP_EMAX + 1 + DP_EBIAS;
}
