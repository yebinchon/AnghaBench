
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_txx9_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 int TXX9_SICISR ;
 int TXX9_SICISR_TXALS ;
 int sio_in (struct uart_txx9_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;

__attribute__((used)) static unsigned int serial_txx9_tx_empty(struct uart_port *port)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);
 unsigned long flags;
 unsigned int ret;

 spin_lock_irqsave(&up->port.lock, flags);
 ret = (sio_in(up, TXX9_SICISR) & TXX9_SICISR_TXALS) ? TIOCSER_TEMT : 0;
 spin_unlock_irqrestore(&up->port.lock, flags);

 return ret;
}
