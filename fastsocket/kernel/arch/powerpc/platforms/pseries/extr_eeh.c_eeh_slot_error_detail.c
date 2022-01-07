
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int dummy; } ;


 int EEH_PCI_REGS_LOG_LEN ;
 int EEH_THAW_MMIO ;
 int eeh_restore_bars (struct pci_dn*) ;
 size_t gather_pci_data (struct pci_dn*,scalar_t__*,int ) ;
 scalar_t__* pci_regs_buf ;
 int rtas_configure_bridge (struct pci_dn*) ;
 int rtas_pci_enable (struct pci_dn*,int ) ;
 int rtas_slot_error_detail (struct pci_dn*,int,scalar_t__*,size_t) ;

void eeh_slot_error_detail(struct pci_dn *pdn, int severity)
{
 size_t loglen = 0;
 pci_regs_buf[0] = 0;

 rtas_pci_enable(pdn, EEH_THAW_MMIO);
 rtas_configure_bridge(pdn);
 eeh_restore_bars(pdn);
 loglen = gather_pci_data(pdn, pci_regs_buf, EEH_PCI_REGS_LOG_LEN);

 rtas_slot_error_detail(pdn, severity, pci_regs_buf, loglen);
}
