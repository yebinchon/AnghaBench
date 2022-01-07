
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;


 int i8259_mask_irq (unsigned int) ;
 int set_irq_chip_and_handler (unsigned int,int *,int *) ;
 int synchronize_irq (unsigned int) ;

__attribute__((used)) static void i8259_host_unmap(struct irq_host *h, unsigned int virq)
{

 i8259_mask_irq(virq);


 set_irq_chip_and_handler(virq, ((void*)0), ((void*)0));


 synchronize_irq(virq);
}
