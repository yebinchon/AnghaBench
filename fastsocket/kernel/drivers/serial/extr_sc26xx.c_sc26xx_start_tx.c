
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx; } ;
struct uart_port {TYPE_1__ icount; TYPE_2__* state; } ;
struct circ_buf {size_t tail; int * buf; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 int IMR_TXRDY ;
 int READ_SC_PORT (struct uart_port*,int ) ;
 int SR ;
 int SR_TXRDY ;
 int THR ;
 int UART_XMIT_SIZE ;
 int WRITE_SC_PORT (struct uart_port*,int ,int ) ;
 int sc26xx_enable_irq (struct uart_port*,int ) ;
 int uart_circ_empty (struct circ_buf*) ;

__attribute__((used)) static void sc26xx_start_tx(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;

 while (!uart_circ_empty(xmit)) {
  if (!(READ_SC_PORT(port, SR) & SR_TXRDY)) {
   sc26xx_enable_irq(port, IMR_TXRDY);
   break;
  }
  WRITE_SC_PORT(port, THR, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
 }
}
