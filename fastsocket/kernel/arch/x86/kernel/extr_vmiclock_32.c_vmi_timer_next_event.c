
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {scalar_t__ mode; } ;
typedef scalar_t__ cycle_t ;
struct TYPE_2__ {int (* set_alarm ) (int ,scalar_t__,int ) ;scalar_t__ (* get_cycle_counter ) (int ) ;} ;


 int BUG_ON (int) ;
 scalar_t__ CLOCK_EVT_MODE_ONESHOT ;
 int VMI_ONESHOT ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int ,scalar_t__,int ) ;
 int vmi_counter (int ) ;
 TYPE_1__ vmi_timer_ops ;

__attribute__((used)) static int vmi_timer_next_event(unsigned long delta,
    struct clock_event_device *evt)
{





 cycle_t now = vmi_timer_ops.get_cycle_counter(vmi_counter(VMI_ONESHOT));

 BUG_ON(evt->mode != CLOCK_EVT_MODE_ONESHOT);
 vmi_timer_ops.set_alarm(VMI_ONESHOT, now + delta, 0);
 return 0;
}
