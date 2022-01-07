
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;



__attribute__((used)) static inline s32 comp2(s32 __x, s32 __width)
{
 if (__width == 32)
  return __x;
 else
  return (__x >= (1 << (__width - 1))) ? (__x - (1 << __width)) : __x;
}
