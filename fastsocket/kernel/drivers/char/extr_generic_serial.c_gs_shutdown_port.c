
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_1__* tty; } ;
struct gs_port {int driver_lock; TYPE_3__ port; TYPE_2__* rd; int * xmit_buf; } ;
struct TYPE_5__ {int (* shutdown_port ) (struct gs_port*) ;} ;
struct TYPE_4__ {int flags; } ;


 int ASYNC_INITIALIZED ;
 int TTY_IO_ERROR ;
 int free_page (unsigned long) ;
 int func_enter () ;
 int func_exit () ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct gs_port*) ;

__attribute__((used)) static void gs_shutdown_port (struct gs_port *port)
{
 unsigned long flags;

 func_enter();

 if (!port) return;

 if (!(port->port.flags & ASYNC_INITIALIZED))
  return;

 spin_lock_irqsave(&port->driver_lock, flags);

 if (port->xmit_buf) {
  free_page((unsigned long) port->xmit_buf);
  port->xmit_buf = ((void*)0);
 }

 if (port->port.tty)
  set_bit(TTY_IO_ERROR, &port->port.tty->flags);

 port->rd->shutdown_port (port);

 port->port.flags &= ~ASYNC_INITIALIZED;
 spin_unlock_irqrestore(&port->driver_lock, flags);

 func_exit();
}
