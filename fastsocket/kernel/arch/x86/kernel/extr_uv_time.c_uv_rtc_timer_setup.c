
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int cpumask; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int cpumask_first (int ) ;
 int uv_rtc_unset_timer (int,int) ;

__attribute__((used)) static void uv_rtc_timer_setup(enum clock_event_mode mode,
          struct clock_event_device *evt)
{
 int ced_cpu = cpumask_first(evt->cpumask);

 switch (mode) {
 case 131:
 case 132:
 case 130:

  break;
 case 128:
 case 129:
  uv_rtc_unset_timer(ced_cpu, 1);
  break;
 }
}
