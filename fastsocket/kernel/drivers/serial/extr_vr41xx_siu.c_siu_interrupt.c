
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UART_IIR ;
 int UART_IIR_NO_INT ;
 int UART_LSR ;
 int UART_LSR_DR ;
 int UART_LSR_THRE ;
 int check_modem_status (struct uart_port*) ;
 int receive_chars (struct uart_port*,int*) ;
 int siu_read (struct uart_port*,int ) ;
 int transmit_chars (struct uart_port*) ;

__attribute__((used)) static irqreturn_t siu_interrupt(int irq, void *dev_id)
{
 struct uart_port *port;
 uint8_t iir, lsr;

 port = (struct uart_port *)dev_id;

 iir = siu_read(port, UART_IIR);
 if (iir & UART_IIR_NO_INT)
  return IRQ_NONE;

 lsr = siu_read(port, UART_LSR);
 if (lsr & UART_LSR_DR)
  receive_chars(port, &lsr);

 check_modem_status(port);

 if (lsr & UART_LSR_THRE)
  transmit_chars(port);

 return IRQ_HANDLED;
}
