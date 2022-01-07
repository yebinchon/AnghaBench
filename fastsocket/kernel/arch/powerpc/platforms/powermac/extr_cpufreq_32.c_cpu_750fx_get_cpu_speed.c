
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HID1_PS ;
 int SPRN_HID1 ;
 unsigned int hi_freq ;
 unsigned int low_freq ;
 int mfspr (int ) ;

__attribute__((used)) static unsigned int cpu_750fx_get_cpu_speed(void)
{
 if (mfspr(SPRN_HID1) & HID1_PS)
  return low_freq;
 else
  return hi_freq;
}
