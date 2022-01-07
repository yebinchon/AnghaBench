
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct msm_port {scalar_t__ imr; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int UART_IMR ;
 scalar_t__ UART_IMR_TXLEV ;
 int UART_SR ;
 int UART_SR_TX_READY ;
 int UART_TF ;
 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int msm_read (struct uart_port*,int ) ;
 int msm_write (struct uart_port*,scalar_t__,int ) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void handle_tx(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 struct msm_port *msm_port = UART_TO_MSM(port);
 int sent_tx;

 if (port->x_char) {
  msm_write(port, port->x_char, UART_TF);
  port->icount.tx++;
  port->x_char = 0;
 }

 while (msm_read(port, UART_SR) & UART_SR_TX_READY) {
  if (uart_circ_empty(xmit)) {

   msm_port->imr &= ~UART_IMR_TXLEV;
   msm_write(port, msm_port->imr, UART_IMR);
   break;
  }

  msm_write(port, xmit->buf[xmit->tail], UART_TF);

  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  sent_tx = 1;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);
}
