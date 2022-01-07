
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int SCFDR ;
 int SCIF_TXROOM_MAX ;
 int sci_in (struct uart_port*,int ) ;

__attribute__((used)) static inline int scif_txroom(struct uart_port *port)
{
 return SCIF_TXROOM_MAX - (sci_in(port, SCFDR) >> 8);
}
