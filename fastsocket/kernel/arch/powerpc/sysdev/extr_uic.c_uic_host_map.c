
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uic {int dummy; } ;
struct irq_host {struct uic* host_data; } ;
typedef int irq_hw_number_t ;


 int IRQ_TYPE_NONE ;
 int handle_level_irq ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;
 int set_irq_chip_data (unsigned int,struct uic*) ;
 int set_irq_type (unsigned int,int ) ;
 int uic_irq_chip ;

__attribute__((used)) static int uic_host_map(struct irq_host *h, unsigned int virq,
   irq_hw_number_t hw)
{
 struct uic *uic = h->host_data;

 set_irq_chip_data(virq, uic);


 set_irq_chip_and_handler(virq, &uic_irq_chip, handle_level_irq);


 set_irq_type(virq, IRQ_TYPE_NONE);

 return 0;
}
