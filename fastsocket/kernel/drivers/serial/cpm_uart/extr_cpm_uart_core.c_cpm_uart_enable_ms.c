
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;


 int pr_debug (char*,int ) ;

__attribute__((used)) static void cpm_uart_enable_ms(struct uart_port *port)
{
 pr_debug("CPM uart[%d]:enable ms\n", port->line);
}
