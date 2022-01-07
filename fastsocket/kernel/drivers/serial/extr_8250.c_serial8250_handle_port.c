
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 int DEBUG_INTR (char*,unsigned int) ;
 int UART_LSR ;
 unsigned int UART_LSR_BI ;
 unsigned int UART_LSR_DR ;
 unsigned int UART_LSR_THRE ;
 int check_modem_status (struct uart_8250_port*) ;
 int receive_chars (struct uart_8250_port*,unsigned int*) ;
 unsigned int serial_inp (struct uart_8250_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transmit_chars (struct uart_8250_port*) ;

__attribute__((used)) static void serial8250_handle_port(struct uart_8250_port *up)
{
 unsigned int status;
 unsigned long flags;

 spin_lock_irqsave(&up->port.lock, flags);

 status = serial_inp(up, UART_LSR);

 DEBUG_INTR("status = %x...", status);

 if (status & (UART_LSR_DR | UART_LSR_BI))
  receive_chars(up, &status);
 check_modem_status(up);
 if (status & UART_LSR_THRE)
  transmit_chars(up);

 spin_unlock_irqrestore(&up->port.lock, flags);
}
