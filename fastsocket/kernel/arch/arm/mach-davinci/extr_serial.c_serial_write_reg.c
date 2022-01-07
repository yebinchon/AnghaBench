
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plat_serial8250_port {int regshift; int mapbase; } ;


 scalar_t__ IO_ADDRESS (int ) ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static inline void serial_write_reg(struct plat_serial8250_port *p, int offset,
        int value)
{
 offset <<= p->regshift;
 __raw_writel(value, IO_ADDRESS(p->mapbase) + offset);
}
