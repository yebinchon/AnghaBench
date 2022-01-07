
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev_rh1 {scalar_t__ __aer_firmware_first_valid; } ;
struct pci_dev {int aer_firmware_first; struct pci_dev_rh1* rh_reserved1; } ;



__attribute__((used)) static inline int pcie_aer_get_firmware_first(struct pci_dev *pci_dev)
{
 struct pci_dev_rh1 *pdr = pci_dev->rh_reserved1;

 if (pdr && pdr->__aer_firmware_first_valid)
  return pci_dev->aer_firmware_first;
 return 0;
}
