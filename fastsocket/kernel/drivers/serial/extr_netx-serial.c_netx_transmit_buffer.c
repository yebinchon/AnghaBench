
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


 int FR_TXFF ;
 scalar_t__ UART_DR ;
 scalar_t__ UART_FR ;
 int UART_XMIT_SIZE ;
 int netx_stop_tx (struct uart_port*) ;
 int readl (scalar_t__) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void netx_transmit_buffer(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;

 if (port->x_char) {
  writel(port->x_char, port->membase + UART_DR);
  port->icount.tx++;
  port->x_char = 0;
  return;
 }

 if (uart_tx_stopped(port) || uart_circ_empty(xmit)) {
  netx_stop_tx(port);
  return;
 }

 do {


  writel(xmit->buf[xmit->tail], port->membase + UART_DR);
  xmit->tail = (xmit->tail + 1) &
           (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 } while (!(readl(port->membase + UART_FR) & FR_TXFF));

 if (uart_circ_empty(xmit))
  netx_stop_tx(port);
}
