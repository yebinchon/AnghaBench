
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; int hub6; scalar_t__ iobase; } ;


 int map_8250_out_reg (struct uart_port*,int) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void hub6_serial_out(struct uart_port *p, int offset, int value)
{
 offset = map_8250_out_reg(p, offset) << p->regshift;
 outb(p->hub6 - 1 + offset, p->iobase);
 outb(value, p->iobase + 1);
}
