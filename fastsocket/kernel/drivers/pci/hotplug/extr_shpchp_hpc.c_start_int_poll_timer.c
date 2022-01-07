
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; scalar_t__ expires; int * function; } ;
struct controller {TYPE_1__ poll_timer; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int int_poll_timeout ;
 scalar_t__ jiffies ;

__attribute__((used)) static void start_int_poll_timer(struct controller *ctrl, int sec)
{

 if ((sec <= 0) || (sec > 60))
  sec = 2;

 ctrl->poll_timer.function = &int_poll_timeout;
 ctrl->poll_timer.data = (unsigned long)ctrl;
 ctrl->poll_timer.expires = jiffies + sec * HZ;
 add_timer(&ctrl->poll_timer);
}
