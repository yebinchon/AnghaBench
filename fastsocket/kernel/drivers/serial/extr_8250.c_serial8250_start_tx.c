
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct uart_8250_port {int ier; int bugs; unsigned char lsr_saved_flags; int acr; TYPE_1__ port; } ;


 unsigned char LSR_SAVE_FLAGS ;
 scalar_t__ PORT_16C950 ;
 scalar_t__ PORT_RM9000 ;
 int UART_ACR ;
 int UART_ACR_TXDIS ;
 int UART_BUG_TXEN ;
 int UART_IER ;
 int UART_IER_THRI ;
 int UART_LSR ;
 unsigned char UART_LSR_TEMT ;
 unsigned char UART_LSR_THRE ;
 int serial_icr_write (struct uart_8250_port*,int ,int) ;
 unsigned char serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,int) ;
 int transmit_chars (struct uart_8250_port*) ;

__attribute__((used)) static void serial8250_start_tx(struct uart_port *port)
{
 struct uart_8250_port *up = (struct uart_8250_port *)port;

 if (!(up->ier & UART_IER_THRI)) {
  up->ier |= UART_IER_THRI;
  serial_out(up, UART_IER, up->ier);

  if (up->bugs & UART_BUG_TXEN) {
   unsigned char lsr;
   lsr = serial_in(up, UART_LSR);
   up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
   if ((up->port.type == PORT_RM9000) ?
    (lsr & UART_LSR_THRE) :
    (lsr & UART_LSR_TEMT))
    transmit_chars(up);
  }
 }




 if (up->port.type == PORT_16C950 && up->acr & UART_ACR_TXDIS) {
  up->acr &= ~UART_ACR_TXDIS;
  serial_icr_write(up, UART_ACR, up->acr);
 }
}
