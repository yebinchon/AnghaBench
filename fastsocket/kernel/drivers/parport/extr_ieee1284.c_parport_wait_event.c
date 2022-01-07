
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {size_t data; int function; scalar_t__ expires; } ;
struct parport {size_t number; TYPE_3__* physport; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_6__ {TYPE_1__ ieee1284; TYPE_2__* cad; } ;
struct TYPE_5__ {int timeout; } ;


 size_t PARPORT_MAX ;
 int add_timer (struct timer_list*) ;
 int del_timer_sync (struct timer_list*) ;
 int destroy_timer_on_stack (struct timer_list*) ;
 int down_interruptible (int *) ;
 int init_timer_on_stack (struct timer_list*) ;
 scalar_t__ jiffies ;
 struct parport** port_from_cookie ;
 int timeout_waiting_on_port ;

int parport_wait_event (struct parport *port, signed long timeout)
{
 int ret;
 struct timer_list timer;

 if (!port->physport->cad->timeout)


  return 1;

 init_timer_on_stack(&timer);
 timer.expires = jiffies + timeout;
 timer.function = timeout_waiting_on_port;
 port_from_cookie[port->number % PARPORT_MAX] = port;
 timer.data = port->number;

 add_timer (&timer);
 ret = down_interruptible (&port->physport->ieee1284.irq);
 if (!del_timer_sync(&timer) && !ret)

  ret = 1;

 destroy_timer_on_stack(&timer);

 return ret;
}
