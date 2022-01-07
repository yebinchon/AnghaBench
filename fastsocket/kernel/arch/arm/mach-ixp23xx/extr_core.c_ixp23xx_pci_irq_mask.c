
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_IXP23XX_INTA ;
 int* IXP23XX_PCI_XSCALE_INT_ENABLE ;

__attribute__((used)) static void ixp23xx_pci_irq_mask(unsigned int irq)
{
 *IXP23XX_PCI_XSCALE_INT_ENABLE &= ~(1 << (IRQ_IXP23XX_INTA + 27 - irq));
}
