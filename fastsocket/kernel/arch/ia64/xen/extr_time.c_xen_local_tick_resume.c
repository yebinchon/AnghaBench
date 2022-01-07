
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_cpu_local_tick () ;
 int touch_softlockup_watchdog () ;

__attribute__((used)) static void xen_local_tick_resume(void)
{

 ia64_cpu_local_tick();
 touch_softlockup_watchdog();
}
