
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int ieee754dp_1e31 () ;
 int ieee754dp_add (int ,int ) ;
 int ieee754dp_fint (unsigned int) ;

ieee754dp ieee754dp_funs(unsigned int u)
{
 if ((int) u < 0)
  return ieee754dp_add(ieee754dp_1e31(),
         ieee754dp_fint(u & ~(1 << 31)));
 return ieee754dp_fint(u);
}
