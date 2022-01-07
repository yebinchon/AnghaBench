
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct pnx8xxx_port {TYPE_1__ port; } ;


 scalar_t__ PORT_PNX8XXX ;

__attribute__((used)) static const char *pnx8xxx_type(struct uart_port *port)
{
 struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;

 return sport->port.type == PORT_PNX8XXX ? "PNX8XXX" : ((void*)0);
}
