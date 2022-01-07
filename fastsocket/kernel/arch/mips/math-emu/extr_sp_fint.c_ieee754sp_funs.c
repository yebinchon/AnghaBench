
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 int ieee754sp_1e31 () ;
 int ieee754sp_add (int ,int ) ;
 int ieee754sp_fint (unsigned int) ;

ieee754sp ieee754sp_funs(unsigned int u)
{
 if ((int) u < 0)
  return ieee754sp_add(ieee754sp_1e31(),
         ieee754sp_fint(u & ~(1 << 31)));
 return ieee754sp_fint(u);
}
