
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;







__attribute__((used)) static const char *sci_type(struct uart_port *port)
{
 switch (port->type) {
 case 131:
  return "irda";
 case 130:
  return "sci";
 case 129:
  return "scif";
 case 128:
  return "scifa";
 }

 return ((void*)0);
}
