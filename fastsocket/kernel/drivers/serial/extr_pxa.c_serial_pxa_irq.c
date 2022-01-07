
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pxa_port {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UART_IIR ;
 unsigned int UART_IIR_NO_INT ;
 int UART_LSR ;
 unsigned int UART_LSR_DR ;
 unsigned int UART_LSR_THRE ;
 int check_modem_status (struct uart_pxa_port*) ;
 int receive_chars (struct uart_pxa_port*,unsigned int*) ;
 unsigned int serial_in (struct uart_pxa_port*,int ) ;
 int transmit_chars (struct uart_pxa_port*) ;

__attribute__((used)) static inline irqreturn_t serial_pxa_irq(int irq, void *dev_id)
{
 struct uart_pxa_port *up = dev_id;
 unsigned int iir, lsr;

 iir = serial_in(up, UART_IIR);
 if (iir & UART_IIR_NO_INT)
  return IRQ_NONE;
 lsr = serial_in(up, UART_LSR);
 if (lsr & UART_LSR_DR)
  receive_chars(up, &lsr);
 check_modem_status(up);
 if (lsr & UART_LSR_THRE)
  transmit_chars(up);
 return IRQ_HANDLED;
}
