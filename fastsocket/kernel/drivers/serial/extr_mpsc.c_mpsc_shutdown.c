
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int line; } ;
struct TYPE_2__ {int irq; } ;
struct mpsc_port_info {TYPE_1__ port; } ;


 int free_irq (int ,struct mpsc_port_info*) ;
 int mpsc_sdma_stop (struct mpsc_port_info*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void mpsc_shutdown(struct uart_port *port)
{
 struct mpsc_port_info *pi = (struct mpsc_port_info *)port;

 pr_debug("mpsc_shutdown[%d]: Shutting down MPSC\n", port->line);

 mpsc_sdma_stop(pi);
 free_irq(pi->port.irq, pi);
}
