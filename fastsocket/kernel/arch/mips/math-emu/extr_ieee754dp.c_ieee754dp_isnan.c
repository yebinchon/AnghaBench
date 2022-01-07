
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 scalar_t__ IEEE754_CLASS_SNAN ;
 scalar_t__ ieee754dp_class (int ) ;

int ieee754dp_isnan(ieee754dp x)
{
 return ieee754dp_class(x) >= IEEE754_CLASS_SNAN;
}
