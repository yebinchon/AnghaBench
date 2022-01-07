
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;


 int map_8250_out_reg (struct uart_port*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mem32_serial_out(struct uart_port *p, int offset, int value)
{
 offset = map_8250_out_reg(p, offset) << p->regshift;
 writel(value, p->membase + offset);
}
