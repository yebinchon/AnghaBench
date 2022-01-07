
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; } ;
struct uart_8250_port {TYPE_1__ port; int timer; } ;


 int UART_IIR ;
 unsigned int UART_IIR_NO_INT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ poll_timeout (int ) ;
 int serial8250_handle_port (struct uart_8250_port*) ;
 unsigned int serial_in (struct uart_8250_port*,int ) ;

__attribute__((used)) static void serial8250_timeout(unsigned long data)
{
 struct uart_8250_port *up = (struct uart_8250_port *)data;
 unsigned int iir;

 iir = serial_in(up, UART_IIR);
 if (!(iir & UART_IIR_NO_INT))
  serial8250_handle_port(up);
 mod_timer(&up->timer, jiffies + poll_timeout(up->port.timeout));
}
