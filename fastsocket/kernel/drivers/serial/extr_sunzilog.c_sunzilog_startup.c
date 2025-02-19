
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunzilog_port {int dummy; } ;
struct uart_port {int lock; } ;


 struct uart_sunzilog_port* UART_ZILOG (struct uart_port*) ;
 scalar_t__ ZS_IS_CONS (struct uart_sunzilog_port*) ;
 int __sunzilog_startup (struct uart_sunzilog_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sunzilog_startup(struct uart_port *port)
{
 struct uart_sunzilog_port *up = UART_ZILOG(port);
 unsigned long flags;

 if (ZS_IS_CONS(up))
  return 0;

 spin_lock_irqsave(&port->lock, flags);
 __sunzilog_startup(up);
 spin_unlock_irqrestore(&port->lock, flags);
 return 0;
}
