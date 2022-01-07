
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int mctrl; int irq; int uartclk; } ;
struct uart_pxa_port {int ier; TYPE_1__ port; int name; int clk; int mcr; } ;
struct uart_port {int line; } ;


 int TIOCM_OUT2 ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IER_RTOIE ;
 int UART_IER_UUE ;
 int UART_IIR ;
 int UART_LCR ;
 int UART_LCR_WLEN8 ;
 int UART_LSR ;
 int UART_MCR_AFE ;
 int UART_MSR ;
 int UART_RX ;
 int clk_get_rate (int ) ;
 int request_irq (int ,int ,int ,int ,struct uart_pxa_port*) ;
 int serial_in (struct uart_pxa_port*,int ) ;
 int serial_out (struct uart_pxa_port*,int ,int) ;
 int serial_pxa_irq ;
 int serial_pxa_set_mctrl (TYPE_1__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int serial_pxa_startup(struct uart_port *port)
{
 struct uart_pxa_port *up = (struct uart_pxa_port *)port;
 unsigned long flags;
 int retval;

 if (port->line == 3)
  up->mcr |= UART_MCR_AFE;
 else
  up->mcr = 0;

 up->port.uartclk = clk_get_rate(up->clk);




 retval = request_irq(up->port.irq, serial_pxa_irq, 0, up->name, up);
 if (retval)
  return retval;





 serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO);
 serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO |
   UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
 serial_out(up, UART_FCR, 0);




 (void) serial_in(up, UART_LSR);
 (void) serial_in(up, UART_RX);
 (void) serial_in(up, UART_IIR);
 (void) serial_in(up, UART_MSR);




 serial_out(up, UART_LCR, UART_LCR_WLEN8);

 spin_lock_irqsave(&up->port.lock, flags);
 up->port.mctrl |= TIOCM_OUT2;
 serial_pxa_set_mctrl(&up->port, up->port.mctrl);
 spin_unlock_irqrestore(&up->port.lock, flags);






 up->ier = UART_IER_RLSI | UART_IER_RDI | UART_IER_RTOIE | UART_IER_UUE;
 serial_out(up, UART_IER, up->ier);




 (void) serial_in(up, UART_LSR);
 (void) serial_in(up, UART_RX);
 (void) serial_in(up, UART_IIR);
 (void) serial_in(up, UART_MSR);

 return 0;
}
