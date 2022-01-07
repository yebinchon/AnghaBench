
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 int ieee754sp_scalb (int ,int) ;

ieee754sp ieee754sp_ldexp(ieee754sp x, int n)
{
 return ieee754sp_scalb(x, n);
}
