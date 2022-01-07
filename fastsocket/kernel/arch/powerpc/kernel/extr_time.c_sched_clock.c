
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __USE_RTC () ;
 scalar_t__ boot_tb ;
 unsigned long long get_rtc () ;
 scalar_t__ get_tb () ;
 unsigned long long mulhdu (scalar_t__,int ) ;
 int tb_to_ns_scale ;
 unsigned long long tb_to_ns_shift ;

unsigned long long sched_clock(void)
{
 if (__USE_RTC())
  return get_rtc();
 return mulhdu(get_tb() - boot_tb, tb_to_ns_scale) << tb_to_ns_shift;
}
