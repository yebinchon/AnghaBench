
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct sa1100_port {TYPE_1__ port; } ;


 int PORT_SA1100 ;
 int UART_CONFIG_TYPE ;
 scalar_t__ sa1100_request_port (TYPE_1__*) ;

__attribute__((used)) static void sa1100_config_port(struct uart_port *port, int flags)
{
 struct sa1100_port *sport = (struct sa1100_port *)port;

 if (flags & UART_CONFIG_TYPE &&
     sa1100_request_port(&sport->port) == 0)
  sport->port.type = PORT_SA1100;
}
