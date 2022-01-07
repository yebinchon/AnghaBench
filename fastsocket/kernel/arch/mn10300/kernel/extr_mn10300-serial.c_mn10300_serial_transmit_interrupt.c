
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* state; } ;
struct mn10300_serial_port {TYPE_3__ uart; int name; } ;
struct TYPE_5__ {int tty; } ;
struct TYPE_6__ {int xmit; TYPE_1__ port; } ;


 scalar_t__ WAKEUP_CHARS ;
 int _enter (char*,int ) ;
 int mn10300_serial_dis_tx_intr (struct mn10300_serial_port*) ;
 scalar_t__ uart_circ_chars_pending (int *) ;
 scalar_t__ uart_circ_empty (int *) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;

__attribute__((used)) static void mn10300_serial_transmit_interrupt(struct mn10300_serial_port *port)
{
 _enter("%s", port->name);

 if (!port->uart.state || !port->uart.state->port.tty) {
  mn10300_serial_dis_tx_intr(port);
  return;
 }

 if (uart_tx_stopped(&port->uart) ||
     uart_circ_empty(&port->uart.state->xmit))
  mn10300_serial_dis_tx_intr(port);

 if (uart_circ_chars_pending(&port->uart.state->xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&port->uart);
}
