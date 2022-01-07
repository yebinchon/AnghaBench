
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;





__attribute__((used)) static inline const char *siu_type_name(struct uart_port *port)
{
 switch (port->type) {
 case 128:
  return "SIU";
 case 129:
  return "DSIU";
 }

 return ((void*)0);
}
