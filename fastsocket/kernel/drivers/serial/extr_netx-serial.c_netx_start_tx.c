
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 int CR_TIE ;
 int FR_TXFF ;
 scalar_t__ UART_CR ;
 scalar_t__ UART_FR ;
 int netx_transmit_buffer (struct uart_port*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void netx_start_tx(struct uart_port *port)
{
 writel(
     readl(port->membase + UART_CR) | CR_TIE, port->membase + UART_CR);

 if (!(readl(port->membase + UART_FR) & FR_TXFF))
  netx_transmit_buffer(port);
}
