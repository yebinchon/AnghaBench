
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UART_IR_EXTIP ;
 unsigned int UART_IR_MASK (int ) ;
 int UART_IR_REG ;
 unsigned int bcm_uart_readl (struct uart_port*,int ) ;
 int bcm_uart_writel (struct uart_port*,unsigned int,int ) ;

__attribute__((used)) static void bcm_uart_enable_ms(struct uart_port *port)
{
 unsigned int val;

 val = bcm_uart_readl(port, UART_IR_REG);
 val |= UART_IR_MASK(UART_IR_EXTIP);
 bcm_uart_writel(port, val, UART_IR_REG);
}
