
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int mode; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;
typedef int cycle_t ;
struct TYPE_2__ {int (* cancel_alarm ) (int ) ;int (* set_alarm ) (int ,int ,int ) ;int (* get_cycle_counter ) (int ) ;int (* get_cycle_frequency ) () ;} ;


 int BUG_ON (int) ;





 int HZ ;
 int VMI_ONESHOT ;
 int VMI_PERIODIC ;
 int do_div (int ,int ) ;
 int irqs_disabled () ;
 int stub1 () ;
 int stub2 (int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ) ;
 int stub5 (int ) ;
 int vmi_counter (int ) ;
 TYPE_1__ vmi_timer_ops ;

__attribute__((used)) static void vmi_timer_set_mode(enum clock_event_mode mode,
          struct clock_event_device *evt)
{
 cycle_t now, cycles_per_hz;
 BUG_ON(!irqs_disabled());

 switch (mode) {
 case 132:
 case 130:
  break;
 case 131:
  cycles_per_hz = vmi_timer_ops.get_cycle_frequency();
  (void)do_div(cycles_per_hz, HZ);
  now = vmi_timer_ops.get_cycle_counter(vmi_counter(VMI_PERIODIC));
  vmi_timer_ops.set_alarm(VMI_PERIODIC, now, cycles_per_hz);
  break;
 case 128:
 case 129:
  switch (evt->mode) {
  case 132:
   vmi_timer_ops.cancel_alarm(VMI_ONESHOT);
   break;
  case 131:
   vmi_timer_ops.cancel_alarm(VMI_PERIODIC);
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }
}
