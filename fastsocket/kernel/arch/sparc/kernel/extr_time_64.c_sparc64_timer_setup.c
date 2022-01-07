
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;
struct TYPE_2__ {int (* disable_irq ) () ;} ;







 int WARN_ON (int) ;
 int stub1 () ;
 TYPE_1__* tick_ops ;

__attribute__((used)) static void sparc64_timer_setup(enum clock_event_mode mode,
    struct clock_event_device *evt)
{
 switch (mode) {
 case 132:
 case 130:
  break;

 case 129:
  tick_ops->disable_irq();
  break;

 case 131:
 case 128:
  WARN_ON(1);
  break;
 };
}
