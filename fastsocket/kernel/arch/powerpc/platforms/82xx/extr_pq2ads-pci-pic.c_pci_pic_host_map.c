
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_host {int host_data; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int status; } ;


 int IRQ_LEVEL ;
 TYPE_1__* get_irq_desc (unsigned int) ;
 int handle_level_irq ;
 int pq2ads_pci_ic ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;
 int set_irq_chip_data (unsigned int,int ) ;

__attribute__((used)) static int pci_pic_host_map(struct irq_host *h, unsigned int virq,
       irq_hw_number_t hw)
{
 get_irq_desc(virq)->status |= IRQ_LEVEL;
 set_irq_chip_data(virq, h->host_data);
 set_irq_chip_and_handler(virq, &pq2ads_pci_ic, handle_level_irq);
 return 0;
}
