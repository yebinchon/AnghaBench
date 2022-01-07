
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tx; } ;
struct TYPE_7__ {TYPE_1__ icount; scalar_t__ membase; TYPE_2__* state; } ;
struct imx_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; int * buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;


 int UART_XMIT_SIZE ;
 scalar_t__ URTX0 ;
 scalar_t__ UTS ;
 int UTS_TXFULL ;
 scalar_t__ WAKEUP_CHARS ;
 int imx_stop_tx (TYPE_3__*) ;
 int readl (scalar_t__) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 int uart_write_wakeup (TYPE_3__*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void imx_transmit_buffer(struct imx_port *sport)
{
 struct circ_buf *xmit = &sport->port.state->xmit;

 while (!(readl(sport->port.membase + UTS) & UTS_TXFULL)) {


  writel(xmit->buf[xmit->tail], sport->port.membase + URTX0);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  sport->port.icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&sport->port);

 if (uart_circ_empty(xmit))
  imx_stop_tx(&sport->port);
}
