
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 scalar_t__ SPBEXP (int ) ;
 scalar_t__ SP_EBIAS ;
 scalar_t__ SP_EMAX ;

int ieee754sp_finite(ieee754sp x)
{
 return SPBEXP(x) != SP_EMAX + 1 + SP_EBIAS;
}
