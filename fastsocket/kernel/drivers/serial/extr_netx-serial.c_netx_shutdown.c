
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; scalar_t__ membase; } ;


 scalar_t__ UART_CR ;
 int free_irq (int ,struct uart_port*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void netx_shutdown(struct uart_port *port)
{
 writel(0, port->membase + UART_CR) ;

 free_irq(port->irq, port);
}
