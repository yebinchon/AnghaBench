
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 scalar_t__ WDOG_TIMEOUT_NONE ;
 scalar_t__ ipmi_watchdog_state ;
 int panic_halt_ipmi_set_timeout () ;
 scalar_t__ pretimeout ;
 int timeout ;
 scalar_t__ watchdog_user ;

__attribute__((used)) static int wdog_panic_handler(struct notifier_block *this,
         unsigned long event,
         void *unused)
{
 static int panic_event_handled;





 if (watchdog_user && !panic_event_handled &&
     ipmi_watchdog_state != WDOG_TIMEOUT_NONE) {

  panic_event_handled = 1;

  timeout = 255;
  pretimeout = 0;
  panic_halt_ipmi_set_timeout();
 }

 return NOTIFY_OK;
}
