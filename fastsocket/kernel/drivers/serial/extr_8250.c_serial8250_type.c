
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int type; } ;
struct TYPE_3__ {char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* uart_config ;

__attribute__((used)) static const char *
serial8250_type(struct uart_port *port)
{
 int type = port->type;

 if (type >= ARRAY_SIZE(uart_config))
  type = 0;
 return uart_config[type].name;
}
