
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;


 int set_irq_chip (unsigned int,int *) ;
 int set_irq_chip_data (unsigned int,int *) ;

__attribute__((used)) static void pci_host_unmap(struct irq_host *h, unsigned int virq)
{

 set_irq_chip_data(virq, ((void*)0));
 set_irq_chip(virq, ((void*)0));
}
