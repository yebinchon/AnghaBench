
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {int * in_sdio_uart_irq; } ;
struct sdio_func {int dummy; } ;


 int UART_IIR ;
 unsigned int UART_IIR_NO_INT ;
 int UART_LSR ;
 unsigned int UART_LSR_DR ;
 unsigned int UART_LSR_THRE ;
 int * current ;
 struct sdio_uart_port* sdio_get_drvdata (struct sdio_func*) ;
 unsigned int sdio_in (struct sdio_uart_port*,int ) ;
 int sdio_uart_check_modem_status (struct sdio_uart_port*) ;
 int sdio_uart_receive_chars (struct sdio_uart_port*,unsigned int*) ;
 int sdio_uart_transmit_chars (struct sdio_uart_port*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sdio_uart_irq(struct sdio_func *func)
{
 struct sdio_uart_port *port = sdio_get_drvdata(func);
 unsigned int iir, lsr;
 if (unlikely(port->in_sdio_uart_irq == current))
  return;

 iir = sdio_in(port, UART_IIR);
 if (iir & UART_IIR_NO_INT)
  return;

 port->in_sdio_uart_irq = current;
 lsr = sdio_in(port, UART_LSR);
 if (lsr & UART_LSR_DR)
  sdio_uart_receive_chars(port, &lsr);
 sdio_uart_check_modem_status(port);
 if (lsr & UART_LSR_THRE)
  sdio_uart_transmit_chars(port);
 port->in_sdio_uart_irq = ((void*)0);
}
