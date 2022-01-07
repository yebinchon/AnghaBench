
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct ioc4_port {int ip_flags; struct uart_port* ip_port; } ;


 int PORT_ACTIVE ;

__attribute__((used)) static inline int port_is_active(struct ioc4_port *port,
  struct uart_port *uart_port)
{
 if (port) {
  if ((port->ip_flags & PORT_ACTIVE)
     && (port->ip_port == uart_port))
   return 1;
 }
 return 0;
}
