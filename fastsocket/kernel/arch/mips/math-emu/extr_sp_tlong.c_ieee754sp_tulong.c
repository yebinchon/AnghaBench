
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int ieee754sp ;


 int ieee754sp_1e63 () ;
 scalar_t__ ieee754sp_lt (int ,int ) ;
 int ieee754sp_sub (int ,int ) ;
 scalar_t__ ieee754sp_tlong (int ) ;

u64 ieee754sp_tulong(ieee754sp x)
{
 ieee754sp hb = ieee754sp_1e63();


 if (ieee754sp_lt(x, hb))
  return (u64) ieee754sp_tlong(x);

 return (u64) ieee754sp_tlong(ieee754sp_sub(x, hb)) |
     (1ULL << 63);
}
