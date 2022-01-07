
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct TYPE_2__ {int misc_mask; int misc_status; int pci_mask; int pci_status; } ;


 int MISC_IGNORE ;
 unsigned int NO_IRQ ;
 unsigned int NO_IRQ_IGNORE ;
 int PCI_IGNORE ;
 unsigned int cpld_pic_get_irq (int,int ,int *,int *) ;
 TYPE_1__* cpld_regs ;
 int generic_handle_irq (unsigned int) ;

__attribute__((used)) static void
cpld_pic_cascade(unsigned int irq, struct irq_desc *desc)
{
 irq = cpld_pic_get_irq(0, PCI_IGNORE, &cpld_regs->pci_status,
  &cpld_regs->pci_mask);
 if (irq != NO_IRQ && irq != NO_IRQ_IGNORE) {
  generic_handle_irq(irq);
  return;
 }

 irq = cpld_pic_get_irq(8, MISC_IGNORE, &cpld_regs->misc_status,
  &cpld_regs->misc_mask);
 if (irq != NO_IRQ && irq != NO_IRQ_IGNORE) {
  generic_handle_irq(irq);
  return;
 }
}
