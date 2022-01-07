
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {struct ipic* host_data; } ;
struct ipic {int dummy; } ;
typedef int irq_hw_number_t ;


 int IRQ_TYPE_NONE ;
 int handle_level_irq ;
 int ipic_level_irq_chip ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;
 int set_irq_chip_data (unsigned int,struct ipic*) ;
 int set_irq_type (unsigned int,int ) ;

__attribute__((used)) static int ipic_host_map(struct irq_host *h, unsigned int virq,
    irq_hw_number_t hw)
{
 struct ipic *ipic = h->host_data;

 set_irq_chip_data(virq, ipic);
 set_irq_chip_and_handler(virq, &ipic_level_irq_chip, handle_level_irq);


 set_irq_type(virq, IRQ_TYPE_NONE);

 return 0;
}
