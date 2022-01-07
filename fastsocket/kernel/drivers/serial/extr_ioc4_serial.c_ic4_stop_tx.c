
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct ioc4_port {int dummy; } ;


 int N_OUTPUT_LOWAT ;
 struct ioc4_port* get_ioc4_port (struct uart_port*,int ) ;
 scalar_t__ port_is_active (struct ioc4_port*,struct uart_port*) ;
 int set_notification (struct ioc4_port*,int ,int ) ;

__attribute__((used)) static void ic4_stop_tx(struct uart_port *the_port)
{
 struct ioc4_port *port = get_ioc4_port(the_port, 0);

 if (port_is_active(port, the_port))
  set_notification(port, N_OUTPUT_LOWAT, 0);
}
