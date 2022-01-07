
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPIO_GPIOFEOI ;
 int INTC_INTENC ;
 int IRQ_TO_GPIO (int) ;

__attribute__((used)) static void lh7a400_ack_gpio_irq (u32 irq)
{
 GPIO_GPIOFEOI = (1 << IRQ_TO_GPIO (irq));
 INTC_INTENC = (1 << irq);
}
