
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct ioc3_port {int dummy; } ;


 int N_OUTPUT_LOWAT ;
 struct ioc3_port* get_ioc3_port (struct uart_port*) ;
 int set_notification (struct ioc3_port*,int ,int ) ;

__attribute__((used)) static void ic3_stop_tx(struct uart_port *the_port)
{
 struct ioc3_port *port = get_ioc3_port(the_port);

 if (port)
  set_notification(port, N_OUTPUT_LOWAT, 0);
}
