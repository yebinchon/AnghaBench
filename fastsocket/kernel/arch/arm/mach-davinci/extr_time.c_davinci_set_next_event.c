
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_s {unsigned long period; } ;
struct clock_event_device {int dummy; } ;


 size_t TID_CLOCKEVENT ;
 int timer32_config (struct timer_s*) ;
 struct timer_s* timers ;

__attribute__((used)) static int davinci_set_next_event(unsigned long cycles,
      struct clock_event_device *evt)
{
 struct timer_s *t = &timers[TID_CLOCKEVENT];

 t->period = cycles;
 timer32_config(t);
 return 0;
}
