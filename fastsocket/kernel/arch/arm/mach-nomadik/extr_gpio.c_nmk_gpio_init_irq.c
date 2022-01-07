
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct nmk_gpio_chip {int parent_irq; TYPE_1__ chip; } ;


 int IRQF_VALID ;
 unsigned int NMK_GPIO_PER_CHIP ;
 unsigned int NOMADIK_GPIO_TO_IRQ (int ) ;
 int handle_edge_irq ;
 int nmk_gpio_irq_chip ;
 int nmk_gpio_irq_handler ;
 int set_irq_chained_handler (int ,int ) ;
 int set_irq_chip (int,int *) ;
 int set_irq_chip_data (int,struct nmk_gpio_chip*) ;
 int set_irq_data (int ,struct nmk_gpio_chip*) ;
 int set_irq_flags (int,int ) ;
 int set_irq_handler (int,int ) ;

__attribute__((used)) static int nmk_gpio_init_irq(struct nmk_gpio_chip *nmk_chip)
{
 unsigned int first_irq;
 int i;

 first_irq = NOMADIK_GPIO_TO_IRQ(nmk_chip->chip.base);
 for (i = first_irq; i < first_irq + NMK_GPIO_PER_CHIP; i++) {
  set_irq_chip(i, &nmk_gpio_irq_chip);
  set_irq_handler(i, handle_edge_irq);
  set_irq_flags(i, IRQF_VALID);
  set_irq_chip_data(i, nmk_chip);
 }
 set_irq_chained_handler(nmk_chip->parent_irq, nmk_gpio_irq_handler);
 set_irq_data(nmk_chip->parent_irq, nmk_chip);
 return 0;
}
