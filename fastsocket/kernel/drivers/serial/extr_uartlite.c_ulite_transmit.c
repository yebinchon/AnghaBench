
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int UART_XMIT_SIZE ;
 int ULITE_STATUS_TXFULL ;
 scalar_t__ ULITE_TX ;
 scalar_t__ WAKEUP_CHARS ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;
 int writeb (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ulite_transmit(struct uart_port *port, int stat)
{
 struct circ_buf *xmit = &port->state->xmit;

 if (stat & ULITE_STATUS_TXFULL)
  return 0;

 if (port->x_char) {
  writeb(port->x_char, port->membase + ULITE_TX);
  port->x_char = 0;
  port->icount.tx++;
  return 1;
 }

 if (uart_circ_empty(xmit) || uart_tx_stopped(port))
  return 0;

 writeb(xmit->buf[xmit->tail], port->membase + ULITE_TX);
 xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE-1);
 port->icount.tx++;


 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 return 1;
}
