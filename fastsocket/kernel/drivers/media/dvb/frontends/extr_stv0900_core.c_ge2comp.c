
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;



s32 ge2comp(s32 a, s32 width)
{
 if (width == 32)
  return a;
 else
  return (a >= (1 << (width - 1))) ? (a - (1 << width)) : a;
}
