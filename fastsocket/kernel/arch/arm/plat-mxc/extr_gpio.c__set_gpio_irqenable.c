
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxc_gpio_port {scalar_t__ base; } ;


 scalar_t__ GPIO_IMR ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static void _set_gpio_irqenable(struct mxc_gpio_port *port, u32 index,
    int enable)
{
 u32 l;

 l = __raw_readl(port->base + GPIO_IMR);
 l = (l & (~(1 << index))) | (!!enable << index);
 __raw_writel(l, port->base + GPIO_IMR);
}
