
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long data; int function; scalar_t__ expires; } ;


 scalar_t__ HZ ;
 int TRACE2 (char*) ;
 int add_timer (TYPE_1__*) ;
 int gdth_timeout ;
 TYPE_1__ gdth_timer ;
 int gdth_timer_running ;
 scalar_t__ jiffies ;

__attribute__((used)) static void gdth_timer_init(void)
{
 if (gdth_timer_running)
  return;
 gdth_timer_running = 1;
 TRACE2(("gdth_detect(): Initializing timer !\n"));
 gdth_timer.expires = jiffies + HZ;
 gdth_timer.data = 0L;
 gdth_timer.function = gdth_timeout;
 add_timer(&gdth_timer);
}
