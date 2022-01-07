
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct pnx8xxx_port {TYPE_1__ port; } ;


 int PORT_PNX8XXX ;
 int UART_CONFIG_TYPE ;
 scalar_t__ pnx8xxx_request_port (TYPE_1__*) ;

__attribute__((used)) static void pnx8xxx_config_port(struct uart_port *port, int flags)
{
 struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;

 if (flags & UART_CONFIG_TYPE &&
     pnx8xxx_request_port(&sport->port) == 0)
  sport->port.type = PORT_PNX8XXX;
}
