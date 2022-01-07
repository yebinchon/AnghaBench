
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxc_gpio_port {scalar_t__ base; } ;


 scalar_t__ GPIO_ISR ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static void _clear_gpio_irqstatus(struct mxc_gpio_port *port, u32 index)
{
 __raw_writel(1 << index, port->base + GPIO_ISR);
}
