
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int dummy; } ;
typedef scalar_t__ PCI_IO_ADDR ;


 scalar_t__ PCI_COMMAND ;
 int PCI_STATUS_REC_MASTER_ABORT ;
 scalar_t__ celleb_epci_get_epci_base (struct pci_controller*) ;
 int in_be32 (scalar_t__) ;
 int out_be32 (scalar_t__,int) ;

__attribute__((used)) static inline void clear_and_disable_master_abort_interrupt(
     struct pci_controller *hose)
{
 PCI_IO_ADDR epci_base;
 PCI_IO_ADDR reg;
 epci_base = celleb_epci_get_epci_base(hose);
 reg = epci_base + PCI_COMMAND;
 out_be32(reg, in_be32(reg) | (PCI_STATUS_REC_MASTER_ABORT << 16));
}
