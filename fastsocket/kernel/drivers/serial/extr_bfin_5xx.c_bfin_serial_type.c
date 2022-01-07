
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct bfin_serial_port {TYPE_1__ port; } ;


 scalar_t__ PORT_BFIN ;

__attribute__((used)) static const char *bfin_serial_type(struct uart_port *port)
{
 struct bfin_serial_port *uart = (struct bfin_serial_port *)port;

 return uart->port.type == PORT_BFIN ? "BFIN-UART" : ((void*)0);
}
