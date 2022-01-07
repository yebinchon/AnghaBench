
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qib_devdata {int pcidev; } ;


 int PCI_CACHE_LINE_SIZE ;
 int PCI_COMMAND ;
 int PCI_INTERRUPT_LINE ;
 int pci_read_config_byte (int ,int ,int *) ;
 int pci_read_config_word (int ,int ,int *) ;

void qib_pcie_getcmd(struct qib_devdata *dd, u16 *cmd, u8 *iline, u8 *cline)
{
 pci_read_config_word(dd->pcidev, PCI_COMMAND, cmd);
 pci_read_config_byte(dd->pcidev, PCI_INTERRUPT_LINE, iline);
 pci_read_config_byte(dd->pcidev, PCI_CACHE_LINE_SIZE, cline);
}
