
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef scalar_t__ s64 ;
typedef int ieee754sp ;


 int ieee754sp_1e63 () ;
 int ieee754sp_add (int ,int ) ;
 int ieee754sp_flong (unsigned long long) ;

ieee754sp ieee754sp_fulong(u64 u)
{
 if ((s64) u < 0)
  return ieee754sp_add(ieee754sp_1e63(),
         ieee754sp_flong(u & ~(1ULL << 63)));
 return ieee754sp_flong(u);
}
