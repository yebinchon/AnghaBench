
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regshift; int iotype; int iobase; int membase; int hub6; } ;
struct uart_sunsu_port {TYPE_1__ port; } ;




 unsigned int inb (int ) ;
 int outb (int ,int ) ;
 unsigned int readb (int ) ;

__attribute__((used)) static unsigned int serial_in(struct uart_sunsu_port *up, int offset)
{
 offset <<= up->port.regshift;

 switch (up->port.iotype) {
 case 129:
  outb(up->port.hub6 - 1 + offset, up->port.iobase);
  return inb(up->port.iobase + 1);

 case 128:
  return readb(up->port.membase + offset);

 default:
  return inb(up->port.iobase + offset);
 }
}
