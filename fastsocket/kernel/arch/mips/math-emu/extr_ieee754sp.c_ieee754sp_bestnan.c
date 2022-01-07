
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 scalar_t__ SPMANT (int ) ;
 int assert (int ) ;
 int ieee754sp_isnan (int ) ;

ieee754sp ieee754sp_bestnan(ieee754sp x, ieee754sp y)
{
 assert(ieee754sp_isnan(x));
 assert(ieee754sp_isnan(y));

 if (SPMANT(x) > SPMANT(y))
  return x;
 else
  return y;
}
