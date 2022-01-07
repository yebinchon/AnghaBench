
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 int ieee754sp_1e31 () ;
 scalar_t__ ieee754sp_lt (int ,int ) ;
 int ieee754sp_sub (int ,int ) ;
 scalar_t__ ieee754sp_tint (int ) ;

unsigned int ieee754sp_tuns(ieee754sp x)
{
 ieee754sp hb = ieee754sp_1e31();


 if (ieee754sp_lt(x, hb))
  return (unsigned) ieee754sp_tint(x);

 return (unsigned) ieee754sp_tint(ieee754sp_sub(x, hb)) |
     ((unsigned) 1 << 31);
}
