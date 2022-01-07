
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct ktermios {int dummy; } ;


 int ioc3_change_speed (struct uart_port*,struct ktermios*,struct ktermios*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
ic3_set_termios(struct uart_port *the_port,
  struct ktermios *termios, struct ktermios *old_termios)
{
 unsigned long port_flags;

 spin_lock_irqsave(&the_port->lock, port_flags);
 ioc3_change_speed(the_port, termios, old_termios);
 spin_unlock_irqrestore(&the_port->lock, port_flags);
}
