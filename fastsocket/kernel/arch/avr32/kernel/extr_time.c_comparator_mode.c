
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int name; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int BUG () ;




 int COMPARE ;
 int cpu_disable_idle_sleep () ;
 int cpu_enable_idle_sleep () ;
 int pr_debug (char*,int ) ;
 int sysreg_write (int ,int ) ;

__attribute__((used)) static void comparator_mode(enum clock_event_mode mode,
  struct clock_event_device *evdev)
{
 switch (mode) {
 case 131:
  pr_debug("%s: start\n", evdev->name);

 case 130:
  cpu_disable_idle_sleep();
  break;
 case 128:
 case 129:
  sysreg_write(COMPARE, 0);
  pr_debug("%s: stop\n", evdev->name);
  cpu_enable_idle_sleep();
  break;
 default:
  BUG();
 }
}
