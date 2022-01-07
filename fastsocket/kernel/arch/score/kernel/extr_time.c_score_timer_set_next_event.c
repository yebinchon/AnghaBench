
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int P_TIMER0_CTRL ;
 int P_TIMER0_PRELOAD ;
 unsigned long TMR_ENABLE ;
 unsigned long TMR_IE_ENABLE ;
 unsigned long TMR_M_PERIODIC ;
 unsigned long inl (int ) ;
 int outl (unsigned long,int ) ;

__attribute__((used)) static int score_timer_set_next_event(unsigned long delta,
  struct clock_event_device *evdev)
{
 outl((TMR_M_PERIODIC | TMR_IE_ENABLE), P_TIMER0_CTRL);
 outl(delta, P_TIMER0_PRELOAD);
 outl(inl(P_TIMER0_CTRL) | TMR_ENABLE, P_TIMER0_CTRL);

 return 0;
}
