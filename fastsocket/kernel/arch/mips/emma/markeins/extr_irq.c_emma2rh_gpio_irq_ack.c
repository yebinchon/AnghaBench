
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMMA2RH_GPIO_INT_ST ;
 scalar_t__ EMMA2RH_GPIO_IRQ_BASE ;
 int emma2rh_out32 (int ,int) ;

__attribute__((used)) static void emma2rh_gpio_irq_ack(unsigned int irq)
{
 irq -= EMMA2RH_GPIO_IRQ_BASE;
 emma2rh_out32(EMMA2RH_GPIO_INT_ST, ~(1 << irq));
}
