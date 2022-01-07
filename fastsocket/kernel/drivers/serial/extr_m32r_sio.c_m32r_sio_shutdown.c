
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct uart_sio_port {int timer; TYPE_1__ port; scalar_t__ ier; } ;
struct uart_port {int dummy; } ;


 int SIOTRCR ;
 int del_timer_sync (int *) ;
 int is_real_interrupt (int ) ;
 int serial_unlink_irq_chain (struct uart_sio_port*) ;
 int sio_init () ;
 int sio_out (struct uart_sio_port*,int ,int ) ;

__attribute__((used)) static void m32r_sio_shutdown(struct uart_port *port)
{
 struct uart_sio_port *up = (struct uart_sio_port *)port;




 up->ier = 0;
 sio_out(up, SIOTRCR, 0);





 sio_init();

 if (!is_real_interrupt(up->port.irq))
  del_timer_sync(&up->timer);
 else
  serial_unlink_irq_chain(up);
}
