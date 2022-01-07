
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_to_gpio (unsigned int) ;
 int set_gpio_maska (int ,int ) ;

__attribute__((used)) static void bfin_gpio_mask_irq(unsigned int irq)
{
 set_gpio_maska(irq_to_gpio(irq), 0);
}
