
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {TYPE_1__* state; } ;
struct circ_buf {int dummy; } ;
struct TYPE_2__ {struct circ_buf xmit; } ;


 scalar_t__ WAKEUP_CHARS ;
 int netx_stop_tx (struct uart_port*) ;
 int netx_transmit_buffer (struct uart_port*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void netx_txint(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;

 if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
  netx_stop_tx(port);
  return;
 }

 netx_transmit_buffer(port);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);
}
