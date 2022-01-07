
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {char x_char; int lock; } ;
struct TYPE_2__ {int (* start_tx ) (struct uart_port*) ;} ;


 TYPE_1__* psc_ops ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_port*) ;

__attribute__((used)) static void
mpc52xx_uart_send_xchar(struct uart_port *port, char ch)
{
 unsigned long flags;
 spin_lock_irqsave(&port->lock, flags);

 port->x_char = ch;
 if (ch) {


  psc_ops->start_tx(port);
 }

 spin_unlock_irqrestore(&port->lock, flags);
}
