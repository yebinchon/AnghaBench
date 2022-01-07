
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;






 scalar_t__ TIMER_CTRL ;
 unsigned long TIMER_CTRL_32BIT ;
 unsigned long TIMER_CTRL_ENABLE ;
 unsigned long TIMER_CTRL_IE ;
 unsigned long TIMER_CTRL_ONESHOT ;
 unsigned long TIMER_CTRL_PERIODIC ;
 scalar_t__ TIMER_LOAD ;
 unsigned long TIMER_RELOAD ;
 scalar_t__ timer0_va_base ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void timer_set_mode(enum clock_event_mode mode,
      struct clock_event_device *clk)
{
 unsigned long ctrl;

 switch(mode) {
 case 130:
  writel(TIMER_RELOAD, timer0_va_base + TIMER_LOAD);

  ctrl = TIMER_CTRL_PERIODIC;
  ctrl |= TIMER_CTRL_32BIT | TIMER_CTRL_IE | TIMER_CTRL_ENABLE;
  break;
 case 131:

  ctrl = TIMER_CTRL_ONESHOT;
  ctrl |= TIMER_CTRL_32BIT | TIMER_CTRL_IE;
  break;
 case 128:
 case 129:
 default:
  ctrl = 0;
 }

 writel(ctrl, timer0_va_base + TIMER_CTRL);
}
