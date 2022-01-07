
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct uart_8250_port {int acr; TYPE_1__ port; } ;


 scalar_t__ PORT_16C950 ;
 int UART_ACR ;
 int UART_ACR_TXDIS ;
 int __stop_tx (struct uart_8250_port*) ;
 int serial_icr_write (struct uart_8250_port*,int ,int ) ;

__attribute__((used)) static void serial8250_stop_tx(struct uart_port *port)
{
 struct uart_8250_port *up = (struct uart_8250_port *)port;

 __stop_tx(up);




 if (up->port.type == PORT_16C950) {
  up->acr |= UART_ACR_TXDIS;
  serial_icr_write(up, UART_ACR, up->acr);
 }
}
