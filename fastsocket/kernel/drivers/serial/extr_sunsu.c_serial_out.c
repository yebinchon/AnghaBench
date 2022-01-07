
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regshift; int iotype; int iobase; int membase; int hub6; } ;
struct uart_sunsu_port {TYPE_1__ port; } ;


 int UART_MCR ;
 int UART_MCR_OUT2 ;


 int outb (int,int ) ;
 int writeb (int,int ) ;

__attribute__((used)) static void serial_out(struct uart_sunsu_port *up, int offset, int value)
{
 if (offset == UART_MCR)
  value |= UART_MCR_OUT2;

 offset <<= up->port.regshift;

 switch (up->port.iotype) {
 case 129:
  outb(up->port.hub6 - 1 + offset, up->port.iobase);
  outb(value, up->port.iobase + 1);
  break;

 case 128:
  writeb(value, up->port.membase + offset);
  break;

 default:
  outb(value, up->port.iobase + offset);
 }
}
