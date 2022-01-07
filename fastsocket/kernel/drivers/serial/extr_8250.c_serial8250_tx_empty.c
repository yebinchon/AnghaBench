
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct uart_8250_port {unsigned int lsr_saved_flags; TYPE_1__ port; } ;


 unsigned int BOTH_EMPTY ;
 unsigned int LSR_SAVE_FLAGS ;
 unsigned int TIOCSER_TEMT ;
 int UART_LSR ;
 unsigned int serial_in (struct uart_8250_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int serial8250_tx_empty(struct uart_port *port)
{
 struct uart_8250_port *up = (struct uart_8250_port *)port;
 unsigned long flags;
 unsigned int lsr;

 spin_lock_irqsave(&up->port.lock, flags);
 lsr = serial_in(up, UART_LSR);
 up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
 spin_unlock_irqrestore(&up->port.lock, flags);

 return (lsr & BOTH_EMPTY) == BOTH_EMPTY ? TIOCSER_TEMT : 0;
}
