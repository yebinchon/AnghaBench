
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_IXP2000_PCIA ;
 unsigned int IRQ_IXP2000_PCIB ;
 unsigned long* IXP2000_PCI_XSCALE_INT_ENABLE ;
 int ixp2000_reg_write (unsigned long*,unsigned long) ;

__attribute__((used)) static void ixp2000_pci_irq_unmask(unsigned int irq)
{
 unsigned long temp = *IXP2000_PCI_XSCALE_INT_ENABLE;
 if (irq == IRQ_IXP2000_PCIA)
  ixp2000_reg_write(IXP2000_PCI_XSCALE_INT_ENABLE, (temp | (1 << 26)));
 else if (irq == IRQ_IXP2000_PCIB)
  ixp2000_reg_write(IXP2000_PCI_XSCALE_INT_ENABLE, (temp | (1 << 27)));
}
