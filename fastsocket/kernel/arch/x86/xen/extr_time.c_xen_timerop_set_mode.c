
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int HYPERVISOR_set_timer_op (int ) ;
 int WARN_ON (int) ;

__attribute__((used)) static void xen_timerop_set_mode(enum clock_event_mode mode,
     struct clock_event_device *evt)
{
 switch (mode) {
 case 131:

  WARN_ON(1);
  break;

 case 132:
 case 130:
  break;

 case 128:
 case 129:
  HYPERVISOR_set_timer_op(0);
  break;
 }
}
