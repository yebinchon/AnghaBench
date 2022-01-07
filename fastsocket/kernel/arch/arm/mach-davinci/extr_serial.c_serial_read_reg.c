
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plat_serial8250_port {int regshift; int mapbase; } ;


 scalar_t__ IO_ADDRESS (int ) ;
 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int serial_read_reg(struct plat_serial8250_port *up,
        int offset)
{
 offset <<= up->regshift;
 return (unsigned int)__raw_readl(IO_ADDRESS(up->mapbase) + offset);
}
