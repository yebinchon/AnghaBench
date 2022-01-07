
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int cpumask; } ;


 int cpumask_first (int ) ;
 scalar_t__ uv_read_rtc (int *) ;
 int uv_rtc_set_timer (int,scalar_t__) ;

__attribute__((used)) static int uv_rtc_next_event(unsigned long delta,
        struct clock_event_device *ced)
{
 int ced_cpu = cpumask_first(ced->cpumask);

 return uv_rtc_set_timer(ced_cpu, delta + uv_read_rtc(((void*)0)));
}
