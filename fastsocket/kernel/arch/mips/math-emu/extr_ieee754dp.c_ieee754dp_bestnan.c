
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 scalar_t__ DPMANT (int ) ;
 int assert (int ) ;
 int ieee754dp_isnan (int ) ;

ieee754dp ieee754dp_bestnan(ieee754dp x, ieee754dp y)
{
 assert(ieee754dp_isnan(x));
 assert(ieee754dp_isnan(y));

 if (DPMANT(x) > DPMANT(y))
  return x;
 else
  return y;
}
