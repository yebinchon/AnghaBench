
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 int UART_CTL_REG ;
 unsigned int UART_CTL_XMITBRK_MASK ;
 unsigned int bcm_uart_readl (struct uart_port*,int ) ;
 int bcm_uart_writel (struct uart_port*,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bcm_uart_break_ctl(struct uart_port *port, int ctl)
{
 unsigned long flags;
 unsigned int val;

 spin_lock_irqsave(&port->lock, flags);

 val = bcm_uart_readl(port, UART_CTL_REG);
 if (ctl)
  val |= UART_CTL_XMITBRK_MASK;
 else
  val &= ~UART_CTL_XMITBRK_MASK;
 bcm_uart_writel(port, val, UART_CTL_REG);

 spin_unlock_irqrestore(&port->lock, flags);
}
