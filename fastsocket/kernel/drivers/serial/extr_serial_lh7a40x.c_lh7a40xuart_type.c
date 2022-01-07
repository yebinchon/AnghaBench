
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 scalar_t__ PORT_LH7A40X ;

__attribute__((used)) static const char* lh7a40xuart_type (struct uart_port* port)
{
 return port->type == PORT_LH7A40X ? "LH7A40X" : ((void*)0);
}
