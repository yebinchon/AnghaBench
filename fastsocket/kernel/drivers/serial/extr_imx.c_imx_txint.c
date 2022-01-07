
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct imx_port {TYPE_2__ port; } ;
struct circ_buf {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {struct circ_buf xmit; } ;


 int IRQ_HANDLED ;
 scalar_t__ URTX0 ;
 scalar_t__ WAKEUP_CHARS ;
 int imx_stop_tx (TYPE_2__*) ;
 int imx_transmit_buffer (struct imx_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_2__*) ;
 int uart_write_wakeup (TYPE_2__*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static irqreturn_t imx_txint(int irq, void *dev_id)
{
 struct imx_port *sport = dev_id;
 struct circ_buf *xmit = &sport->port.state->xmit;
 unsigned long flags;

 spin_lock_irqsave(&sport->port.lock,flags);
 if (sport->port.x_char)
 {

  writel(sport->port.x_char, sport->port.membase + URTX0);
  goto out;
 }

 if (uart_circ_empty(xmit) || uart_tx_stopped(&sport->port)) {
  imx_stop_tx(&sport->port);
  goto out;
 }

 imx_transmit_buffer(sport);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&sport->port);

out:
 spin_unlock_irqrestore(&sport->port.lock,flags);
 return IRQ_HANDLED;
}
