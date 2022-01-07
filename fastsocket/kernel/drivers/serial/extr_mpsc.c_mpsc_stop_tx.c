
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;
struct mpsc_port_info {int dummy; } ;


 int mpsc_freeze (struct mpsc_port_info*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void mpsc_stop_tx(struct uart_port *port)
{
 struct mpsc_port_info *pi = (struct mpsc_port_info *)port;

 pr_debug("mpsc_stop_tx[%d]\n", port->line);

 mpsc_freeze(pi);
}
