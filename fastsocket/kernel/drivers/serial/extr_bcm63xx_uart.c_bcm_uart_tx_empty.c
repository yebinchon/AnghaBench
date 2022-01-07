
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UART_IR_REG ;
 unsigned int UART_IR_STAT (int ) ;
 int UART_IR_TXEMPTY ;
 unsigned int bcm_uart_readl (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int bcm_uart_tx_empty(struct uart_port *port)
{
 unsigned int val;

 val = bcm_uart_readl(port, UART_IR_REG);
 return (val & UART_IR_STAT(UART_IR_TXEMPTY)) ? 1 : 0;
}
