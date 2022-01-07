
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pio_device {int dummy; } ;


 int IER ;
 unsigned int irq_to_gpio (unsigned int) ;
 struct pio_device* pio_dev ;
 int pio_writel (struct pio_device*,int ,int) ;

__attribute__((used)) static void gpio_irq_unmask(unsigned irq)
{
 unsigned gpio = irq_to_gpio(irq);
 struct pio_device *pio = &pio_dev[gpio >> 5];

 pio_writel(pio, IER, 1 << (gpio & 0x1f));
}
