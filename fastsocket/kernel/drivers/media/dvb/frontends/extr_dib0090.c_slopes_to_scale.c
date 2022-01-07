
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct slope {int range; int slope; } ;
typedef int s16 ;



__attribute__((used)) static u16 slopes_to_scale(const struct slope *slopes, u8 num, s16 val)
{
 u8 i;
 u16 rest;
 u16 ret = 0;
 for (i = 0; i < num; i++) {
  if (val > slopes[i].range)
   rest = slopes[i].range;
  else
   rest = val;
  ret += (rest * slopes[i].slope) / slopes[i].range;
  val -= rest;
 }
 return ret;
}
