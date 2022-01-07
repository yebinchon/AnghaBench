
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buf; } ;
struct uart_state {TYPE_2__ xmit; struct uart_port* uart_port; } ;
struct uart_port {TYPE_1__* ops; } ;
struct tty_struct {int hw_stopped; int stopped; struct uart_state* driver_data; } ;
struct TYPE_3__ {int (* start_tx ) (struct uart_port*) ;} ;


 int stub1 (struct uart_port*) ;
 int uart_circ_empty (TYPE_2__*) ;

__attribute__((used)) static void __uart_start(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port = state->uart_port;

 if (!uart_circ_empty(&state->xmit) && state->xmit.buf &&
     !tty->stopped && !tty->hw_stopped)
  port->ops->start_tx(port);
}
