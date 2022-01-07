
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _set_gpio_irqenable (int *,int,int ) ;
 int irq_to_gpio (int) ;
 int * mxc_gpio_ports ;

__attribute__((used)) static void gpio_mask_irq(u32 irq)
{
 u32 gpio = irq_to_gpio(irq);
 _set_gpio_irqenable(&mxc_gpio_ports[gpio / 32], gpio & 0x1f, 0);
}
