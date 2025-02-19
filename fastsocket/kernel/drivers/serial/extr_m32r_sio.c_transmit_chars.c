
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tx; } ;
struct TYPE_8__ {int fifosize; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct uart_sio_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;


 int DEBUG_INTR (char*) ;
 int UART_LSR ;
 int UART_LSR_THRE ;
 int UART_TX ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int m32r_sio_stop_tx (TYPE_3__*) ;
 int serial_in (struct uart_sio_port*,int ) ;
 int serial_out (struct uart_sio_port*,int ,scalar_t__) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;

__attribute__((used)) static void transmit_chars(struct uart_sio_port *up)
{
 struct circ_buf *xmit = &up->port.state->xmit;
 int count;

 if (up->port.x_char) {

  serial_out(up, UART_TX, up->port.x_char);

  up->port.icount.tx++;
  up->port.x_char = 0;
  return;
 }
 if (uart_circ_empty(xmit) || uart_tx_stopped(&up->port)) {
  m32r_sio_stop_tx(&up->port);
  return;
 }

 count = up->port.fifosize;
 do {
  serial_out(up, UART_TX, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  up->port.icount.tx++;
  if (uart_circ_empty(xmit))
   break;
  while (!(serial_in(up, UART_LSR) & UART_LSR_THRE));

 } while (--count > 0);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&up->port);

 DEBUG_INTR("THRE...");

 if (uart_circ_empty(xmit))
  m32r_sio_stop_tx(&up->port);
}
