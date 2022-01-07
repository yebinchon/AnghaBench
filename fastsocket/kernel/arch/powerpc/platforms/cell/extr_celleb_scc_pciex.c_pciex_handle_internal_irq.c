
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int * cfg_addr; } ;
typedef int irqreturn_t ;


 int BUG_ON (int ) ;
 int IRQ_HANDLED ;
 int pciex_check_status (int *) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static irqreturn_t pciex_handle_internal_irq(int irq, void *dev_id)
{
 struct pci_controller *phb = dev_id;

 pr_debug("PCIEX:pciex_handle_internal_irq(irq=%d)\n", irq);

 BUG_ON(phb->cfg_addr == ((void*)0));

 pciex_check_status(phb->cfg_addr);

 return IRQ_HANDLED;
}
