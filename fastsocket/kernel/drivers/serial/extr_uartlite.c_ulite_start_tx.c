
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ ULITE_STATUS ;
 int readb (scalar_t__) ;
 int ulite_transmit (struct uart_port*,int ) ;

__attribute__((used)) static void ulite_start_tx(struct uart_port *port)
{
 ulite_transmit(port, readb(port->membase + ULITE_STATUS));
}
