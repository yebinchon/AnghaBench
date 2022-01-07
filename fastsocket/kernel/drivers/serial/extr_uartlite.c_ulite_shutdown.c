
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; scalar_t__ membase; } ;


 scalar_t__ ULITE_CONTROL ;
 int free_irq (int ,struct uart_port*) ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void ulite_shutdown(struct uart_port *port)
{
 writeb(0, port->membase + ULITE_CONTROL);
 readb(port->membase + ULITE_CONTROL);
 free_irq(port->irq, port);
}
