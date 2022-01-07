
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ mapbase; } ;


 scalar_t__ PROTO_RS232 ;

__attribute__((used)) static const char *ic4_type(struct uart_port *the_port)
{
 if (the_port->mapbase == PROTO_RS232)
  return "SGI IOC4 Serial [rs232]";
 else
  return "SGI IOC4 Serial [rs422]";
}
