
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;



__attribute__((used)) static s32 carl9170_interpolate_s32(s32 x, s32 x1, s32 y1, s32 x2, s32 y2)
{

 if (y2 == y1)
  return y1;


 if (x == x1)
  return y1;
 if (x == x2)
  return y2;


 if (x2 == x1)
  return y1;

 return y1 + (((y2 - y1) * (x - x1)) / (x2 - x1));
}
