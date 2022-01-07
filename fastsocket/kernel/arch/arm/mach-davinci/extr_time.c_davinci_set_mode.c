
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_s {int period; int opts; } ;
struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int HZ ;
 size_t TID_CLOCKEVENT ;
 int TIMER_OPTS_DISABLED ;
 int TIMER_OPTS_ONESHOT ;
 int TIMER_OPTS_PERIODIC ;
 int TIMER_OPTS_STATE_MASK ;
 int davinci_clock_tick_rate ;
 int timer32_config (struct timer_s*) ;
 struct timer_s* timers ;

__attribute__((used)) static void davinci_set_mode(enum clock_event_mode mode,
        struct clock_event_device *evt)
{
 struct timer_s *t = &timers[TID_CLOCKEVENT];

 switch (mode) {
 case 131:
  t->period = davinci_clock_tick_rate / (HZ);
  t->opts &= ~TIMER_OPTS_STATE_MASK;
  t->opts |= TIMER_OPTS_PERIODIC;
  timer32_config(t);
  break;
 case 132:
  t->opts &= ~TIMER_OPTS_STATE_MASK;
  t->opts |= TIMER_OPTS_ONESHOT;
  break;
 case 128:
 case 129:
  t->opts &= ~TIMER_OPTS_STATE_MASK;
  t->opts |= TIMER_OPTS_DISABLED;
  break;
 case 130:
  break;
 }
}
