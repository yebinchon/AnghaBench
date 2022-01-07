
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;


 int map_8250_in_reg (struct uart_port*,int) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned int mem32_serial_in(struct uart_port *p, int offset)
{
 offset = map_8250_in_reg(p, offset) << p->regshift;
 return readl(p->membase + offset);
}
