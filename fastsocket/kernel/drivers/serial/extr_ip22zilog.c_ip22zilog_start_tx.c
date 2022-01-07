
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zilog_channel {int data; int control; } ;
struct TYPE_4__ {int tx; } ;
struct uart_port {TYPE_2__ icount; TYPE_1__* state; scalar_t__ x_char; } ;
struct uart_ip22zilog_port {int port; int flags; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int IP22ZILOG_FLAG_TX_ACTIVE ;
 int IP22ZILOG_FLAG_TX_STOPPED ;
 unsigned char Tx_BUF_EMP ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 struct zilog_channel* ZILOG_CHANNEL_FROM_PORT (struct uart_port*) ;
 int ZSDELAY () ;
 int ZS_WSYNC (struct zilog_channel*) ;
 unsigned char readb (int *) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_write_wakeup (int *) ;
 int writeb (scalar_t__,int *) ;

__attribute__((used)) static void ip22zilog_start_tx(struct uart_port *port)
{
 struct uart_ip22zilog_port *up = (struct uart_ip22zilog_port *) port;
 struct zilog_channel *channel = ZILOG_CHANNEL_FROM_PORT(port);
 unsigned char status;

 up->flags |= IP22ZILOG_FLAG_TX_ACTIVE;
 up->flags &= ~IP22ZILOG_FLAG_TX_STOPPED;

 status = readb(&channel->control);
 ZSDELAY();


 if (!(status & Tx_BUF_EMP))
  return;




 if (port->x_char) {
  writeb(port->x_char, &channel->data);
  ZSDELAY();
  ZS_WSYNC(channel);

  port->icount.tx++;
  port->x_char = 0;
 } else {
  struct circ_buf *xmit = &port->state->xmit;

  writeb(xmit->buf[xmit->tail], &channel->data);
  ZSDELAY();
  ZS_WSYNC(channel);

  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;

  if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
   uart_write_wakeup(&up->port);
 }
}
