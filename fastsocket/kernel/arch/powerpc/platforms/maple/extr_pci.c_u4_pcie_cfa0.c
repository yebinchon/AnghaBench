
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;

__attribute__((used)) static unsigned int u4_pcie_cfa0(unsigned int devfn, unsigned int off)
{
 return (1 << PCI_SLOT(devfn)) |
        (PCI_FUNC(devfn) << 8) |
        ((off >> 8) << 28) |
        (off & 0xfcu);
}
