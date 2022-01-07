
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_sunsu_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 int UART_LSR ;
 int UART_LSR_TEMT ;
 int serial_in (struct uart_sunsu_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int sunsu_tx_empty(struct uart_port *port)
{
 struct uart_sunsu_port *up = (struct uart_sunsu_port *) port;
 unsigned long flags;
 unsigned int ret;

 spin_lock_irqsave(&up->port.lock, flags);
 ret = serial_in(up, UART_LSR) & UART_LSR_TEMT ? TIOCSER_TEMT : 0;
 spin_unlock_irqrestore(&up->port.lock, flags);

 return ret;
}
