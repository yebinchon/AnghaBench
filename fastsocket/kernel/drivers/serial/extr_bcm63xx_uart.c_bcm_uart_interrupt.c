
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int UART_EXTINP_CTS_MASK ;
 unsigned int UART_EXTINP_DCD_MASK ;
 unsigned int UART_EXTINP_IRSTAT (int ) ;
 int UART_EXTINP_IR_CTS ;
 int UART_EXTINP_IR_DCD ;
 int UART_EXTINP_REG ;
 int UART_IR_EXTIP ;
 unsigned int UART_IR_MASK (int ) ;
 int UART_IR_REG ;
 unsigned int UART_RX_INT_STAT ;
 unsigned int UART_TX_INT_STAT ;
 int bcm_uart_do_rx (struct uart_port*) ;
 int bcm_uart_do_tx (struct uart_port*) ;
 unsigned int bcm_uart_readl (struct uart_port*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uart_handle_cts_change (struct uart_port*,unsigned int) ;
 int uart_handle_dcd_change (struct uart_port*,unsigned int) ;

__attribute__((used)) static irqreturn_t bcm_uart_interrupt(int irq, void *dev_id)
{
 struct uart_port *port;
 unsigned int irqstat;

 port = dev_id;
 spin_lock(&port->lock);

 irqstat = bcm_uart_readl(port, UART_IR_REG);
 if (irqstat & UART_RX_INT_STAT)
  bcm_uart_do_rx(port);

 if (irqstat & UART_TX_INT_STAT)
  bcm_uart_do_tx(port);

 if (irqstat & UART_IR_MASK(UART_IR_EXTIP)) {
  unsigned int estat;

  estat = bcm_uart_readl(port, UART_EXTINP_REG);
  if (estat & UART_EXTINP_IRSTAT(UART_EXTINP_IR_CTS))
   uart_handle_cts_change(port,
            estat & UART_EXTINP_CTS_MASK);
  if (estat & UART_EXTINP_IRSTAT(UART_EXTINP_IR_DCD))
   uart_handle_dcd_change(port,
            estat & UART_EXTINP_DCD_MASK);
 }

 spin_unlock(&port->lock);
 return IRQ_HANDLED;
}
