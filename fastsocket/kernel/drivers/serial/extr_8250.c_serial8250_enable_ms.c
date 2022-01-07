
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_8250_port {int bugs; int ier; } ;


 int UART_BUG_NOMSR ;
 int UART_IER ;
 int UART_IER_MSI ;
 int serial_out (struct uart_8250_port*,int ,int ) ;

__attribute__((used)) static void serial8250_enable_ms(struct uart_port *port)
{
 struct uart_8250_port *up = (struct uart_8250_port *)port;


 if (up->bugs & UART_BUG_NOMSR)
  return;

 up->ier |= UART_IER_MSI;
 serial_out(up, UART_IER, up->ier);
}
