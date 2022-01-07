
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;






 scalar_t__ TWD_TIMER_CONTROL ;
 unsigned long TWD_TIMER_CONTROL_ENABLE ;
 unsigned long TWD_TIMER_CONTROL_IT_ENABLE ;
 unsigned long TWD_TIMER_CONTROL_ONESHOT ;
 unsigned long TWD_TIMER_CONTROL_PERIODIC ;
 int __raw_writel (unsigned long,scalar_t__) ;
 scalar_t__ twd_base ;

__attribute__((used)) static void twd_set_mode(enum clock_event_mode mode,
   struct clock_event_device *clk)
{
 unsigned long ctrl;

 switch (mode) {
 case 130:

  ctrl = TWD_TIMER_CONTROL_ENABLE | TWD_TIMER_CONTROL_IT_ENABLE
   | TWD_TIMER_CONTROL_PERIODIC;
  break;
 case 131:

  ctrl = TWD_TIMER_CONTROL_IT_ENABLE | TWD_TIMER_CONTROL_ONESHOT;
  break;
 case 128:
 case 129:
 default:
  ctrl = 0;
 }

 __raw_writel(ctrl, twd_base + TWD_TIMER_CONTROL);
}
