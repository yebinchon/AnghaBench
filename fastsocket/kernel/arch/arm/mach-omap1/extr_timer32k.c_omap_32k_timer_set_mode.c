
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int OMAP_32K_TIMER_TICK_PERIOD ;
 int omap_32k_timer_start (int ) ;
 int omap_32k_timer_stop () ;

__attribute__((used)) static void omap_32k_timer_set_mode(enum clock_event_mode mode,
        struct clock_event_device *evt)
{
 omap_32k_timer_stop();

 switch (mode) {
 case 131:
  omap_32k_timer_start(OMAP_32K_TIMER_TICK_PERIOD);
  break;
 case 132:
 case 128:
 case 129:
  break;
 case 130:
  break;
 }
}
