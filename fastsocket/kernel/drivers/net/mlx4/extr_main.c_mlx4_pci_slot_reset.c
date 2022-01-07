
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int __mlx4_init_one (struct pci_dev*,int ) ;

__attribute__((used)) static pci_ers_result_t mlx4_pci_slot_reset(struct pci_dev *pdev)
{
 int ret = __mlx4_init_one(pdev, 0);

 return ret ? PCI_ERS_RESULT_DISCONNECT : PCI_ERS_RESULT_RECOVERED;
}
