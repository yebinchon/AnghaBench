
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_port {int lock; scalar_t__ tty; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_kref_get (struct tty_struct*) ;
 int tty_kref_put (scalar_t__) ;

void tty_port_tty_set(struct tty_port *port, struct tty_struct *tty)
{
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 if (port->tty)
  tty_kref_put(port->tty);
 port->tty = tty_kref_get(tty);
 spin_unlock_irqrestore(&port->lock, flags);
}
