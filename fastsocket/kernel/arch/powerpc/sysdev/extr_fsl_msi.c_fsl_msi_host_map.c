
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_host {int dummy; } ;
struct irq_chip {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int status; } ;


 int IRQ_TYPE_EDGE_FALLING ;
 struct irq_chip fsl_msi_chip ;
 TYPE_1__* get_irq_desc (unsigned int) ;
 int handle_edge_irq ;
 int set_irq_chip_and_handler (unsigned int,struct irq_chip*,int ) ;

__attribute__((used)) static int fsl_msi_host_map(struct irq_host *h, unsigned int virq,
    irq_hw_number_t hw)
{
 struct irq_chip *chip = &fsl_msi_chip;

 get_irq_desc(virq)->status |= IRQ_TYPE_EDGE_FALLING;

 set_irq_chip_and_handler(virq, chip, handle_edge_irq);

 return 0;
}
