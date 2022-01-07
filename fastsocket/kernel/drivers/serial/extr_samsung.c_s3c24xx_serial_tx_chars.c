
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int tx; } ;
struct uart_port {TYPE_3__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct s3c24xx_uart_port {TYPE_2__* info; struct uart_port port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {int tx_fifofull; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 int IRQ_HANDLED ;
 int S3C2410_UFSTAT ;
 int S3C2410_UTXH ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int rd_regl (struct uart_port*,int ) ;
 int s3c24xx_serial_stop_tx (struct uart_port*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;
 int wr_regb (struct uart_port*,int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
{
 struct s3c24xx_uart_port *ourport = id;
 struct uart_port *port = &ourport->port;
 struct circ_buf *xmit = &port->state->xmit;
 int count = 256;

 if (port->x_char) {
  wr_regb(port, S3C2410_UTXH, port->x_char);
  port->icount.tx++;
  port->x_char = 0;
  goto out;
 }





 if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
  s3c24xx_serial_stop_tx(port);
  goto out;
 }



 while (!uart_circ_empty(xmit) && count-- > 0) {
  if (rd_regl(port, S3C2410_UFSTAT) & ourport->info->tx_fifofull)
   break;

  wr_regb(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (uart_circ_empty(xmit))
  s3c24xx_serial_stop_tx(port);

 out:
 return IRQ_HANDLED;
}
