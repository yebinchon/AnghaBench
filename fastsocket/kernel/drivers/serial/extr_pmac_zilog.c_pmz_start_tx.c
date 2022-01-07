
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {TYPE_2__ icount; TYPE_1__* state; scalar_t__ x_char; } ;
struct uart_pmac_port {int port; int * node; int flags; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int PMACZILOG_FLAG_TX_ACTIVE ;
 int PMACZILOG_FLAG_TX_STOPPED ;
 int R0 ;
 unsigned char Tx_BUF_EMP ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 scalar_t__ ZS_IS_ASLEEP (struct uart_pmac_port*) ;
 int pmz_debug (char*) ;
 unsigned char read_zsreg (struct uart_pmac_port*,int ) ;
 struct uart_pmac_port* to_pmz (struct uart_port*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_write_wakeup (int *) ;
 int write_zsdata (struct uart_pmac_port*,scalar_t__) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static void pmz_start_tx(struct uart_port *port)
{
 struct uart_pmac_port *uap = to_pmz(port);
 unsigned char status;

 pmz_debug("pmz: start_tx()\n");

 uap->flags |= PMACZILOG_FLAG_TX_ACTIVE;
 uap->flags &= ~PMACZILOG_FLAG_TX_STOPPED;

 if (ZS_IS_ASLEEP(uap) || uap->node == ((void*)0))
  return;

 status = read_zsreg(uap, R0);


 if (!(status & Tx_BUF_EMP))
  return;




 if (port->x_char) {
  write_zsdata(uap, port->x_char);
  zssync(uap);
  port->icount.tx++;
  port->x_char = 0;
 } else {
  struct circ_buf *xmit = &port->state->xmit;

  write_zsdata(uap, xmit->buf[xmit->tail]);
  zssync(uap);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;

  if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
   uart_write_wakeup(&uap->port);
 }
 pmz_debug("pmz: start_tx() done.\n");
}
