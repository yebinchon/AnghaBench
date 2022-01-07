
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {int fifosize; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int IRQ_HANDLED ;
 int UARTDR (struct uart_port*) ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int clps711xuart_stop_tx (struct uart_port*) ;
 int clps_writel (scalar_t__,int ) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static irqreturn_t clps711xuart_int_tx(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 struct circ_buf *xmit = &port->state->xmit;
 int count;

 if (port->x_char) {
  clps_writel(port->x_char, UARTDR(port));
  port->icount.tx++;
  port->x_char = 0;
  return IRQ_HANDLED;
 }
 if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
  clps711xuart_stop_tx(port);
  return IRQ_HANDLED;
 }

 count = port->fifosize >> 1;
 do {
  clps_writel(xmit->buf[xmit->tail], UARTDR(port));
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 } while (--count > 0);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (uart_circ_empty(xmit))
  clps711xuart_stop_tx(port);

 return IRQ_HANDLED;
}
