
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int tx; } ;
struct TYPE_10__ {TYPE_3__ icount; TYPE_1__* state; } ;
struct sn_cons_port {TYPE_4__ sc_port; TYPE_2__* sc_ops; int sc_is_asynch; } ;
struct circ_buf {int head; int tail; char* buf; } ;
struct TYPE_8__ {int (* sal_puts_raw ) (char*,int) ;int (* sal_puts ) (char*,int) ;} ;
struct TYPE_7__ {struct circ_buf xmit; } ;


 int BUG_ON (int) ;
 int DPRINTF (char*) ;
 int SAL_CONSOLE_INTR_XMIT ;
 int TRANSMIT_RAW ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int ia64_sn_console_intr_disable (int ) ;
 int snp_stop_tx (TYPE_4__*) ;
 int stub1 (char*,int) ;
 int stub2 (char*,int) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_4__*) ;
 int uart_write_wakeup (TYPE_4__*) ;

__attribute__((used)) static void sn_transmit_chars(struct sn_cons_port *port, int raw)
{
 int xmit_count, tail, head, loops, ii;
 int result;
 char *start;
 struct circ_buf *xmit;

 if (!port)
  return;

 BUG_ON(!port->sc_is_asynch);

 if (port->sc_port.state) {

  xmit = &port->sc_port.state->xmit;
 } else {




  return;
 }

 if (uart_circ_empty(xmit) || uart_tx_stopped(&port->sc_port)) {

  ia64_sn_console_intr_disable(SAL_CONSOLE_INTR_XMIT);
  return;
 }

 head = xmit->head;
 tail = xmit->tail;
 start = &xmit->buf[tail];



 loops = (head < tail) ? 2 : 1;

 for (ii = 0; ii < loops; ii++) {
  xmit_count = (head < tail) ?
      (UART_XMIT_SIZE - tail) : (head - tail);

  if (xmit_count > 0) {
   if (raw == TRANSMIT_RAW)
    result =
        port->sc_ops->sal_puts_raw(start,
              xmit_count);
   else
    result =
        port->sc_ops->sal_puts(start, xmit_count);




   if (result > 0) {
    xmit_count -= result;
    port->sc_port.icount.tx += result;
    tail += result;
    tail &= UART_XMIT_SIZE - 1;
    xmit->tail = tail;
    start = &xmit->buf[tail];
   }
  }
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&port->sc_port);

 if (uart_circ_empty(xmit))
  snp_stop_tx(&port->sc_port);
}
