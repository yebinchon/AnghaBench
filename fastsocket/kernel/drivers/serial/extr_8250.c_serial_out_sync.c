
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int iotype; int (* serial_out ) (struct uart_port*,int,int) ;int (* serial_in ) (struct uart_port*,int ) ;} ;
struct uart_8250_port {struct uart_port port; } ;


 int UART_LCR ;




 int stub1 (struct uart_port*,int,int) ;
 int stub2 (struct uart_port*,int ) ;
 int stub3 (struct uart_port*,int,int) ;

__attribute__((used)) static void
serial_out_sync(struct uart_8250_port *up, int offset, int value)
{
 struct uart_port *p = &up->port;
 switch (p->iotype) {
 case 129:
 case 128:



 case 130:
  p->serial_out(p, offset, value);
  p->serial_in(p, UART_LCR);
  break;
 default:
  p->serial_out(p, offset, value);
 }
}
