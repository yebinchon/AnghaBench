
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int ieee754dp_add (int ,int ) ;
 scalar_t__ ieee754dp_gt (int ,int ) ;
 int ieee754dp_modf (int ,int *) ;
 int ieee754dp_one (int ) ;
 int ieee754dp_zero (int ) ;

ieee754dp ieee754dp_ceil(ieee754dp x)
{
 ieee754dp i;

 if (ieee754dp_gt(ieee754dp_modf(x, &i), ieee754dp_zero(0)))
  return ieee754dp_add(i, ieee754dp_one(0));
 else
  return i;
}
