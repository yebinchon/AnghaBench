
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_READRQ ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void rtl_tx_performance_tweak(struct pci_dev *pdev, u16 force)
{
 pcie_capability_clear_and_set_word(pdev, PCI_EXP_DEVCTL,
        PCI_EXP_DEVCTL_READRQ, force);
}
