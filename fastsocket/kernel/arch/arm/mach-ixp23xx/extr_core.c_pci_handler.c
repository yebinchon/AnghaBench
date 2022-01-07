
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* unmask ) (unsigned int) ;int (* ack ) (unsigned int) ;} ;


 int BUG () ;
 unsigned int IRQ_IXP23XX_INTA ;
 unsigned int IRQ_IXP23XX_INTB ;
 int* IXP23XX_PCI_XSCALE_INT_STATUS ;
 int generic_handle_irq (unsigned int) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;

__attribute__((used)) static void pci_handler(unsigned int irq, struct irq_desc *desc)
{
 u32 pci_interrupt;
 unsigned int irqno;

 pci_interrupt = *IXP23XX_PCI_XSCALE_INT_STATUS;

 desc->chip->ack(irq);


 if (pci_interrupt & (1 << 26)) {
  irqno = IRQ_IXP23XX_INTB;
 } else if (pci_interrupt & (1 << 27)) {
  irqno = IRQ_IXP23XX_INTA;
 } else {
  BUG();
 }

 generic_handle_irq(irqno);

 desc->chip->unmask(irq);
}
