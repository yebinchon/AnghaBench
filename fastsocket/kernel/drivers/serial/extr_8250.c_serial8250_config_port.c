
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ iotype; scalar_t__ type; } ;
struct uart_8250_port {scalar_t__ cur_iotype; TYPE_1__ port; } ;


 scalar_t__ PORT_RSA ;
 scalar_t__ PORT_UNKNOWN ;
 int PROBE_ANY ;
 int PROBE_RSA ;
 int UART_CONFIG_IRQ ;
 int UART_CONFIG_TYPE ;
 int autoconfig (struct uart_8250_port*,int) ;
 int autoconfig_irq (struct uart_8250_port*) ;
 int serial8250_release_rsa_resource (struct uart_8250_port*) ;
 int serial8250_release_std_resource (struct uart_8250_port*) ;
 int serial8250_request_rsa_resource (struct uart_8250_port*) ;
 int serial8250_request_std_resource (struct uart_8250_port*) ;
 int set_io_from_upio (struct uart_port*) ;

__attribute__((used)) static void serial8250_config_port(struct uart_port *port, int flags)
{
 struct uart_8250_port *up = (struct uart_8250_port *)port;
 int probeflags = PROBE_ANY;
 int ret;





 ret = serial8250_request_std_resource(up);
 if (ret < 0)
  return;

 ret = serial8250_request_rsa_resource(up);
 if (ret < 0)
  probeflags &= ~PROBE_RSA;

 if (up->port.iotype != up->cur_iotype)
  set_io_from_upio(port);

 if (flags & UART_CONFIG_TYPE)
  autoconfig(up, probeflags);
 if (up->port.type != PORT_UNKNOWN && flags & UART_CONFIG_IRQ)
  autoconfig_irq(up);

 if (up->port.type != PORT_RSA && probeflags & PROBE_RSA)
  serial8250_release_rsa_resource(up);
 if (up->port.type == PORT_UNKNOWN)
  serial8250_release_std_resource(up);
}
