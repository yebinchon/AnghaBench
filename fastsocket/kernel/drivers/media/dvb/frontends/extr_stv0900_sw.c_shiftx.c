
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;



s32 shiftx(s32 x, int demod, s32 shift)
{
 if (demod == 1)
  return x - shift;

 return x;
}
