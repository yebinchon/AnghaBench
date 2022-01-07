
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 scalar_t__ IEEE754_CLASS_SNAN ;
 scalar_t__ ieee754sp_class (int ) ;

int ieee754sp_isnan(ieee754sp x)
{
 return ieee754sp_class(x) >= IEEE754_CLASS_SNAN;
}
