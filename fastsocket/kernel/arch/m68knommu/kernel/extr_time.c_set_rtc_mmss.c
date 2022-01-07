
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mach_set_clock_mmss (unsigned long) ;

__attribute__((used)) static inline int set_rtc_mmss(unsigned long nowtime)
{
 if (mach_set_clock_mmss)
  return mach_set_clock_mmss (nowtime);
 return -1;
}
