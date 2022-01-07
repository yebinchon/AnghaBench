
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int ieee754dp_1e31 () ;
 scalar_t__ ieee754dp_lt (int ,int ) ;
 int ieee754dp_sub (int ,int ) ;
 scalar_t__ ieee754dp_tint (int ) ;

unsigned int ieee754dp_tuns(ieee754dp x)
{
 ieee754dp hb = ieee754dp_1e31();


 if (ieee754dp_lt(x, hb))
  return (unsigned) ieee754dp_tint(x);

 return (unsigned) ieee754dp_tint(ieee754dp_sub(x, hb)) |
     ((unsigned) 1 << 31);
}
