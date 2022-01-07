
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;
typedef int irq_hw_number_t ;


 int handle_simple_irq ;
 int msic_irq_chip ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;

__attribute__((used)) static int msic_host_map(struct irq_host *h, unsigned int virq,
    irq_hw_number_t hw)
{
 set_irq_chip_and_handler(virq, &msic_irq_chip, handle_simple_irq);

 return 0;
}
