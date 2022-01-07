
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_CLKREQ_EN ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void rtl_enable_clock_request(struct pci_dev *pdev)
{
 pcie_capability_set_word(pdev, PCI_EXP_LNKCTL,
     PCI_EXP_LNKCTL_CLKREQ_EN);
}
