
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int disable_timer () ;
 int set_interval () ;

__attribute__((used)) static void itimer_set_mode(enum clock_event_mode mode,
       struct clock_event_device *evt)
{
 switch (mode) {
 case 131:
  set_interval();
  break;

 case 129:
 case 128:
 case 132:
  disable_timer();
  break;

 case 130:
  break;
 }
}
