
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int delta_msr_wait; int open_wait; int lock; int * tty; int flags; scalar_t__ count; } ;


 int ASYNC_NORMAL_ACTIVE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_kref_put (int *) ;
 int tty_port_shutdown (struct tty_port*) ;
 int wake_up_interruptible (int *) ;

void tty_port_hangup(struct tty_port *port)
{
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 port->count = 0;
 port->flags &= ~ASYNC_NORMAL_ACTIVE;
 if (port->tty)
  tty_kref_put(port->tty);
 port->tty = ((void*)0);
 spin_unlock_irqrestore(&port->lock, flags);
 wake_up_interruptible(&port->open_wait);
 wake_up_interruptible(&port->delta_msr_wait);
 tty_port_shutdown(port);
}
