
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCI_BASE ;
 int PCI_GPPM_ICLR ;
 int PCI_GPPM_STATUS ;
 unsigned long inl (int) ;
 int outl (unsigned long,int) ;

__attribute__((used)) static inline void clear_status(void)
{
 unsigned long pci_stat;

 pci_stat = inl(PCI_BASE | PCI_GPPM_STATUS);
 outl(pci_stat, PCI_BASE | PCI_GPPM_ICLR);
}
