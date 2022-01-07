
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GFER ;
 unsigned int GPIO11_27_MASK (unsigned int) ;
 unsigned int GPIO_IRQ_falling_edge ;
 unsigned int GPIO_IRQ_mask ;
 unsigned int GPIO_IRQ_rising_edge ;
 unsigned int GRER ;

__attribute__((used)) static void sa1100_high_gpio_unmask(unsigned int irq)
{
 unsigned int mask = GPIO11_27_MASK(irq);

 GPIO_IRQ_mask |= mask;

 GRER = GPIO_IRQ_rising_edge & GPIO_IRQ_mask;
 GFER = GPIO_IRQ_falling_edge & GPIO_IRQ_mask;
}
