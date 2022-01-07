
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int pci_irqmask; int name; } ;


 int ARRAY_SIZE (int ) ;
 int PCI_INT_IR_SMPINT ;
 int cx88_ir_irq (struct cx88_core*) ;
 int cx88_pci_irqs ;
 int cx88_print_irqbits (int ,char*,int ,int ,int,int ) ;

int cx88_core_irq(struct cx88_core *core, u32 status)
{
 int handled = 0;

 if (status & PCI_INT_IR_SMPINT) {
  cx88_ir_irq(core);
  handled++;
 }
 if (!handled)
  cx88_print_irqbits(core->name, "irq pci",
       cx88_pci_irqs, ARRAY_SIZE(cx88_pci_irqs),
       status, core->pci_irqmask);
 return handled;
}
