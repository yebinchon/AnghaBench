
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int mlx4_remove_one (struct pci_dev*) ;
 scalar_t__ pci_channel_io_perm_failure ;

__attribute__((used)) static pci_ers_result_t mlx4_pci_err_detected(struct pci_dev *pdev,
           pci_channel_state_t state)
{
 mlx4_remove_one(pdev);

 return state == pci_channel_io_perm_failure ?
  PCI_ERS_RESULT_DISCONNECT : PCI_ERS_RESULT_NEED_RESET;
}
