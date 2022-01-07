
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;
typedef int pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int ipr_pci_frozen (struct pci_dev*) ;
 int ipr_pci_perm_failure (struct pci_dev*) ;



__attribute__((used)) static pci_ers_result_t ipr_pci_error_detected(struct pci_dev *pdev,
            pci_channel_state_t state)
{
 switch (state) {
 case 129:
  ipr_pci_frozen(pdev);
  return PCI_ERS_RESULT_NEED_RESET;
 case 128:
  ipr_pci_perm_failure(pdev);
  return PCI_ERS_RESULT_DISCONNECT;
  break;
 default:
  break;
 }
 return PCI_ERS_RESULT_NEED_RESET;
}
