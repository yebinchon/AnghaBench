
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tx; } ;
struct TYPE_8__ {int fifosize; TYPE_2__ icount; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct uart_amba_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;


 scalar_t__ UART01x_DR ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int pl011_stop_tx (TYPE_3__*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;
 int writew (scalar_t__,scalar_t__) ;

__attribute__((used)) static void pl011_tx_chars(struct uart_amba_port *uap)
{
 struct circ_buf *xmit = &uap->port.state->xmit;
 int count;

 if (uap->port.x_char) {
  writew(uap->port.x_char, uap->port.membase + UART01x_DR);
  uap->port.icount.tx++;
  uap->port.x_char = 0;
  return;
 }
 if (uart_circ_empty(xmit) || uart_tx_stopped(&uap->port)) {
  pl011_stop_tx(&uap->port);
  return;
 }

 count = uap->port.fifosize >> 1;
 do {
  writew(xmit->buf[xmit->tail], uap->port.membase + UART01x_DR);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  uap->port.icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 } while (--count > 0);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&uap->port);

 if (uart_circ_empty(xmit))
  pl011_stop_tx(&uap->port);
}
