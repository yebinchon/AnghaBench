
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct bfin_serial_port {TYPE_1__ port; } ;


 int PORT_BFIN ;
 int UART_CONFIG_TYPE ;
 scalar_t__ bfin_serial_request_port (TYPE_1__*) ;

__attribute__((used)) static void bfin_serial_config_port(struct uart_port *port, int flags)
{
 struct bfin_serial_port *uart = (struct bfin_serial_port *)port;

 if (flags & UART_CONFIG_TYPE &&
     bfin_serial_request_port(&uart->port) == 0)
  uart->port.type = PORT_BFIN;
}
