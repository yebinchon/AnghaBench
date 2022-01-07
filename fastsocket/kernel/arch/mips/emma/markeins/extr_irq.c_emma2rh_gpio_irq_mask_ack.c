
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EMMA2RH_GPIO_INT_MASK ;
 int EMMA2RH_GPIO_INT_ST ;
 scalar_t__ EMMA2RH_GPIO_IRQ_BASE ;
 int emma2rh_in32 (int ) ;
 int emma2rh_out32 (int ,int) ;

__attribute__((used)) static void emma2rh_gpio_irq_mask_ack(unsigned int irq)
{
 u32 reg;

 irq -= EMMA2RH_GPIO_IRQ_BASE;
 emma2rh_out32(EMMA2RH_GPIO_INT_ST, ~(1 << irq));

 reg = emma2rh_in32(EMMA2RH_GPIO_INT_MASK);
 reg &= ~(1 << irq);
 emma2rh_out32(EMMA2RH_GPIO_INT_MASK, reg);
}
