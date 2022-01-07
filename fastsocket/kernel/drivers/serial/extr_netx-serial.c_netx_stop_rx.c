
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 unsigned int CR_RIE ;
 scalar_t__ UART_CR ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void netx_stop_rx(struct uart_port *port)
{
 unsigned int val;
 val = readl(port->membase + UART_CR);
 writel(val & ~CR_RIE, port->membase + UART_CR);
}
