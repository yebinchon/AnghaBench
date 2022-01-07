
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int ieee754dp_modf (int ,int *) ;

ieee754dp ieee754dp_trunc(ieee754dp x)
{
 ieee754dp i;

 (void) ieee754dp_modf(x, &i);
 return i;
}
