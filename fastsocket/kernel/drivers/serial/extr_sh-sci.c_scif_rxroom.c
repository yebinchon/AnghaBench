
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int SCFDR ;
 int SCIF_RFDC_MASK ;
 int sci_in (struct uart_port*,int ) ;

__attribute__((used)) static inline int scif_rxroom(struct uart_port *port)
{
 return sci_in(port, SCFDR) & SCIF_RFDC_MASK;
}
