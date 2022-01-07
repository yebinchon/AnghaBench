
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;
typedef int irq_hw_number_t ;


 int IRQ_TYPE_NONE ;
 int handle_level_irq ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;
 int set_irq_type (unsigned int,int ) ;
 int spider_pic ;

__attribute__((used)) static int spider_host_map(struct irq_host *h, unsigned int virq,
   irq_hw_number_t hw)
{
 set_irq_chip_and_handler(virq, &spider_pic, handle_level_irq);


 set_irq_type(virq, IRQ_TYPE_NONE);

 return 0;
}
