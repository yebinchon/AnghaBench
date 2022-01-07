
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UART_CTL_REG ;
 unsigned int UART_CTL_TXEN_MASK ;
 int UART_IR_REG ;
 unsigned int UART_TX_INT_MASK ;
 unsigned int bcm_uart_readl (struct uart_port*,int ) ;
 int bcm_uart_writel (struct uart_port*,unsigned int,int ) ;

__attribute__((used)) static void bcm_uart_stop_tx(struct uart_port *port)
{
 unsigned int val;

 val = bcm_uart_readl(port, UART_CTL_REG);
 val &= ~(UART_CTL_TXEN_MASK);
 bcm_uart_writel(port, val, UART_CTL_REG);

 val = bcm_uart_readl(port, UART_IR_REG);
 val &= ~UART_TX_INT_MASK;
 bcm_uart_writel(port, val, UART_IR_REG);
}
