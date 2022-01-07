
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct imx_port {TYPE_1__ port; } ;


 int PORT_IMX ;
 int UART_CONFIG_TYPE ;
 scalar_t__ imx_request_port (TYPE_1__*) ;

__attribute__((used)) static void imx_config_port(struct uart_port *port, int flags)
{
 struct imx_port *sport = (struct imx_port *)port;

 if (flags & UART_CONFIG_TYPE &&
     imx_request_port(&sport->port) == 0)
  sport->port.type = PORT_IMX;
}
