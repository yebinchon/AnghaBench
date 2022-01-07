
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long data; } ;
struct TYPE_3__ {unsigned int timeout; int irq; } ;
struct uart_sio_port {int ier; TYPE_2__ timer; TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 int SIOTRCR ;
 int UART_IER_MSI ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int is_real_interrupt (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_2__*,scalar_t__) ;
 int serial_link_irq_chain (struct uart_sio_port*) ;
 int sio_init () ;
 int sio_out (struct uart_sio_port*,int ,int) ;
 int sio_reset () ;

__attribute__((used)) static int m32r_sio_startup(struct uart_port *port)
{
 struct uart_sio_port *up = (struct uart_sio_port *)port;
 int retval;

 sio_init();






 if (!is_real_interrupt(up->port.irq)) {
  unsigned int timeout = up->port.timeout;

  timeout = timeout > 6 ? (timeout / 2 - 2) : 1;

  up->timer.data = (unsigned long)up;
  mod_timer(&up->timer, jiffies + timeout);
 } else {
  retval = serial_link_irq_chain(up);
  if (retval)
   return retval;
 }
 up->ier = UART_IER_MSI | UART_IER_RLSI | UART_IER_RDI;
 sio_out(up, SIOTRCR, up->ier);




 sio_reset();

 return 0;
}
