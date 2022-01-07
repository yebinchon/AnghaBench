
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int BUG () ;





 int HZ ;
 int P_TIMER0_CTRL ;
 int P_TIMER0_PRELOAD ;
 int SYSTEM_CLOCK ;
 int TMR_ENABLE ;
 int TMR_IE_ENABLE ;
 int TMR_M_PERIODIC ;
 int inl (int ) ;
 int outl (int,int ) ;

__attribute__((used)) static void score_timer_set_mode(enum clock_event_mode mode,
  struct clock_event_device *evdev)
{
 switch (mode) {
 case 131:
  outl((TMR_M_PERIODIC | TMR_IE_ENABLE), P_TIMER0_CTRL);
  outl(SYSTEM_CLOCK/HZ, P_TIMER0_PRELOAD);
  outl(inl(P_TIMER0_CTRL) | TMR_ENABLE, P_TIMER0_CTRL);
  break;
 case 132:
 case 129:
 case 130:
 case 128:
  break;
 default:
  BUG();
 }
}
