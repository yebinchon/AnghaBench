
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_JSM ;

__attribute__((used)) static void jsm_config_port(struct uart_port *port, int flags)
{
 port->type = PORT_JSM;
}
