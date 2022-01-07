
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int line; } ;
struct TYPE_2__ {int minor; } ;


 TYPE_1__ serial8250_reg ;

__attribute__((used)) static int serial_index(struct uart_port *port)
{
 return (serial8250_reg.minor - 64) + port->line;
}
