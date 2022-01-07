
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_pci_regs {unsigned int if_status; } ;


 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ PCI_BASE_REG ;
 int * pci_int_count ;

__attribute__((used)) static int bpci_interrupt(int irq, void *dev_id)
{
 struct msp_pci_regs *preg = (void *)PCI_BASE_REG;
 unsigned int stat = preg->if_status;
 preg->if_status = stat;

 return PCIBIOS_SUCCESSFUL;
}
