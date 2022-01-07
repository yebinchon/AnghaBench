
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {scalar_t__ mode; } ;


 int BUG () ;
 scalar_t__ CLOCK_EVT_MODE_ONESHOT ;
 scalar_t__ HYPERVISOR_set_timer_op (int ) ;
 int WARN_ON (int) ;
 int get_abs_timeout (unsigned long) ;

__attribute__((used)) static int xen_timerop_set_next_event(unsigned long delta,
          struct clock_event_device *evt)
{
 WARN_ON(evt->mode != CLOCK_EVT_MODE_ONESHOT);

 if (HYPERVISOR_set_timer_op(get_abs_timeout(delta)) < 0)
  BUG();





 return 0;
}
