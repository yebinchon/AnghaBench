
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int ieee754dp_scalb (int ,int) ;

ieee754dp ieee754dp_ldexp(ieee754dp x, int n)
{
 return ieee754dp_scalb(x, n);
}
