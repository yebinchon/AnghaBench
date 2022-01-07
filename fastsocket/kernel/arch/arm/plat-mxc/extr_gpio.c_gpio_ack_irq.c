
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _clear_gpio_irqstatus (int *,int) ;
 int irq_to_gpio (int) ;
 int * mxc_gpio_ports ;

__attribute__((used)) static void gpio_ack_irq(u32 irq)
{
 u32 gpio = irq_to_gpio(irq);
 _clear_gpio_irqstatus(&mxc_gpio_ports[gpio / 32], gpio & 0x1f);
}
