
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 scalar_t__ ieee754dp_lt (int ,int ) ;
 int ieee754dp_modf (int ,int *) ;
 int ieee754dp_one (int ) ;
 int ieee754dp_sub (int ,int ) ;
 int ieee754dp_zero (int ) ;

ieee754dp ieee754dp_floor(ieee754dp x)
{
 ieee754dp i;

 if (ieee754dp_lt(ieee754dp_modf(x, &i), ieee754dp_zero(0)))
  return ieee754dp_sub(i, ieee754dp_one(0));
 else
  return i;
}
