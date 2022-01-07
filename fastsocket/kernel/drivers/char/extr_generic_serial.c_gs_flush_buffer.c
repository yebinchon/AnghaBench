
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int driver_lock; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;


 int func_enter () ;
 int func_exit () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_wakeup (struct tty_struct*) ;

void gs_flush_buffer(struct tty_struct *tty)
{
 struct gs_port *port;
 unsigned long flags;

 func_enter ();

 port = tty->driver_data;

 if (!port) return;


 spin_lock_irqsave (&port->driver_lock, flags);
 port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;
 spin_unlock_irqrestore (&port->driver_lock, flags);

 tty_wakeup(tty);
 func_exit ();
}
