
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct uart_port {int lock; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int mpc52xx_psc_ipcr; } ;
struct TYPE_3__ {scalar_t__ (* tx_rdy ) (struct uart_port*) ;int (* tx_clr_irq ) (struct uart_port*) ;scalar_t__ (* rx_rdy ) (struct uart_port*) ;int (* rx_clr_irq ) (struct uart_port*) ;} ;


 int IRQ_HANDLED ;
 unsigned long ISR_PASS_LIMIT ;
 int MPC52xx_PSC_CTS ;
 int MPC52xx_PSC_DCD ;
 int MPC52xx_PSC_D_CTS ;
 int MPC52xx_PSC_D_DCD ;
 TYPE_2__* PSC (struct uart_port*) ;
 int in_8 (int *) ;
 unsigned int mpc52xx_uart_int_rx_chars (struct uart_port*) ;
 unsigned int mpc52xx_uart_int_tx_chars (struct uart_port*) ;
 TYPE_1__* psc_ops ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct uart_port*) ;
 scalar_t__ stub2 (struct uart_port*) ;
 int stub3 (struct uart_port*) ;
 scalar_t__ stub4 (struct uart_port*) ;
 int uart_handle_cts_change (struct uart_port*,int) ;
 int uart_handle_dcd_change (struct uart_port*,int) ;

__attribute__((used)) static irqreturn_t
mpc52xx_uart_int(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 unsigned long pass = ISR_PASS_LIMIT;
 unsigned int keepgoing;
 u8 status;

 spin_lock(&port->lock);


 do {

  keepgoing = 0;

  psc_ops->rx_clr_irq(port);
  if (psc_ops->rx_rdy(port))
   keepgoing |= mpc52xx_uart_int_rx_chars(port);

  psc_ops->tx_clr_irq(port);
  if (psc_ops->tx_rdy(port))
   keepgoing |= mpc52xx_uart_int_tx_chars(port);

  status = in_8(&PSC(port)->mpc52xx_psc_ipcr);
  if (status & MPC52xx_PSC_D_DCD)
   uart_handle_dcd_change(port, !(status & MPC52xx_PSC_DCD));

  if (status & MPC52xx_PSC_D_CTS)
   uart_handle_cts_change(port, !(status & MPC52xx_PSC_CTS));


  if (!(--pass))
   keepgoing = 0;

 } while (keepgoing);

 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
