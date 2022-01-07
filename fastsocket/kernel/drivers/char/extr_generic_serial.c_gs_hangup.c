
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct gs_port* driver_data; } ;
struct TYPE_2__ {int flags; int open_wait; int lock; scalar_t__ count; struct tty_struct* tty; } ;
struct gs_port {TYPE_1__ port; } ;


 int ASYNC_NORMAL_ACTIVE ;
 int GS_ACTIVE ;
 int func_enter () ;
 int func_exit () ;
 int gs_shutdown_port (struct gs_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

void gs_hangup(struct tty_struct *tty)
{
 struct gs_port *port;
 unsigned long flags;

 func_enter ();

 port = tty->driver_data;
 tty = port->port.tty;
 if (!tty)
  return;

 gs_shutdown_port (port);
 spin_lock_irqsave(&port->port.lock, flags);
 port->port.flags &= ~(ASYNC_NORMAL_ACTIVE|GS_ACTIVE);
 port->port.tty = ((void*)0);
 port->port.count = 0;
 spin_unlock_irqrestore(&port->port.lock, flags);

 wake_up_interruptible(&port->port.open_wait);
 func_exit ();
}
