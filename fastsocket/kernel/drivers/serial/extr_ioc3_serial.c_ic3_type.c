
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;


 scalar_t__ IS_RS232 (int ) ;

__attribute__((used)) static const char *ic3_type(struct uart_port *the_port)
{
 if (IS_RS232(the_port->line))
  return "SGI IOC3 Serial [rs232]";
 else
  return "SGI IOC3 Serial [rs422]";
}
