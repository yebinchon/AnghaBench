
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plat_serial8250_port {int regshift; scalar_t__ membase; } ;


 int __raw_writeb (int,scalar_t__) ;

__attribute__((used)) static inline void omap_serial_outp(struct plat_serial8250_port *p, int offset,
        int value)
{
 offset <<= p->regshift;
 __raw_writeb(value, p->membase + offset);
}
