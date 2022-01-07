
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct ioc3_port {TYPE_1__* ip_hooks; } ;
struct TYPE_2__ {int intr_tx_mt; } ;


 int N_OUTPUT_LOWAT ;
 int enable_intrs (struct ioc3_port*,int ) ;
 struct ioc3_port* get_ioc3_port (struct uart_port*) ;
 int set_notification (struct ioc3_port*,int ,int) ;

__attribute__((used)) static void ic3_start_tx(struct uart_port *the_port)
{
 struct ioc3_port *port = get_ioc3_port(the_port);

 if (port) {
  set_notification(port, N_OUTPUT_LOWAT, 1);
  enable_intrs(port, port->ip_hooks->intr_tx_mt);
 }
}
