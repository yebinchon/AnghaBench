
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;


 int cpm_uart_tx_pump (struct uart_port*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void cpm_uart_int_tx(struct uart_port *port)
{
 pr_debug("CPM uart[%d]:TX INT\n", port->line);

 cpm_uart_tx_pump(port);
}
