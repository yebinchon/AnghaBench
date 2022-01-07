
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int SCxSR ;
 int SCxSR_RDxF (struct uart_port*) ;
 int sci_in (struct uart_port*,int ) ;

__attribute__((used)) static inline int sci_rxroom(struct uart_port *port)
{
 return (sci_in(port, SCxSR) & SCxSR_RDxF(port)) != 0;
}
