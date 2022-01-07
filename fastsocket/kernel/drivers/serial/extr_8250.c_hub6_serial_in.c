
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; int hub6; scalar_t__ iobase; } ;


 unsigned int inb (scalar_t__) ;
 int map_8250_in_reg (struct uart_port*,int) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static unsigned int hub6_serial_in(struct uart_port *p, int offset)
{
 offset = map_8250_in_reg(p, offset) << p->regshift;
 outb(p->hub6 - 1 + offset, p->iobase);
 return inb(p->iobase + 1);
}
