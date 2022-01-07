
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int ieee754dp ;


 int ieee754dp_1e63 () ;
 scalar_t__ ieee754dp_lt (int ,int ) ;
 int ieee754dp_sub (int ,int ) ;
 scalar_t__ ieee754dp_tlong (int ) ;

u64 ieee754dp_tulong(ieee754dp x)
{
 ieee754dp hb = ieee754dp_1e63();


 if (ieee754dp_lt(x, hb))
  return (u64) ieee754dp_tlong(x);

 return (u64) ieee754dp_tlong(ieee754dp_sub(x, hb)) |
     (1ULL << 63);
}
