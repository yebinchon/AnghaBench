
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef scalar_t__ s64 ;
typedef int ieee754dp ;


 int ieee754dp_1e63 () ;
 int ieee754dp_add (int ,int ) ;
 int ieee754dp_flong (unsigned long long) ;

ieee754dp ieee754dp_fulong(u64 u)
{
 if ((s64) u < 0)
  return ieee754dp_add(ieee754dp_1e63(),
         ieee754dp_flong(u & ~(1ULL << 63)));
 return ieee754dp_flong(u);
}
