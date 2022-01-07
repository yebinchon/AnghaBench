
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 scalar_t__ PORT_UNKNOWN ;

__attribute__((used)) static const char *timbuart_type(struct uart_port *port)
{
 return port->type == PORT_UNKNOWN ? "timbuart" : ((void*)0);
}
