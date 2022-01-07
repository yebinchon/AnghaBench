
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct uart_sunsu_port {int ier; int acr; TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 scalar_t__ PORT_16C950 ;
 int UART_ACR ;
 int UART_ACR_TXDIS ;
 int UART_IER ;
 int UART_IER_THRI ;
 int serial_icr_write (struct uart_sunsu_port*,int ,int) ;
 int serial_out (struct uart_sunsu_port*,int ,int) ;

__attribute__((used)) static void sunsu_start_tx(struct uart_port *port)
{
 struct uart_sunsu_port *up = (struct uart_sunsu_port *) port;

 if (!(up->ier & UART_IER_THRI)) {
  up->ier |= UART_IER_THRI;
  serial_out(up, UART_IER, up->ier);
 }




 if (up->port.type == PORT_16C950 && up->acr & UART_ACR_TXDIS) {
  up->acr &= ~UART_ACR_TXDIS;
  serial_icr_write(up, UART_ACR, up->acr);
 }
}
