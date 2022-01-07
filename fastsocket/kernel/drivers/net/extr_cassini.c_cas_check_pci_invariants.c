
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; scalar_t__ device; scalar_t__ revision; } ;
struct cas {int cas_flags; struct pci_dev* pdev; } ;


 int CAS_FLAG_NO_HW_CSUM ;
 int CAS_FLAG_REG_PLUS ;
 int CAS_FLAG_SATURN ;
 int CAS_FLAG_TARGET_ABORT ;
 scalar_t__ CAS_ID_REV2 ;
 scalar_t__ CAS_ID_REVPLUS ;
 scalar_t__ CAS_ID_REVPLUS02u ;
 scalar_t__ PCI_DEVICE_ID_NS_SATURN ;
 scalar_t__ PCI_DEVICE_ID_SUN_CASSINI ;
 scalar_t__ PCI_VENDOR_ID_NS ;
 scalar_t__ PCI_VENDOR_ID_SUN ;

__attribute__((used)) static void cas_check_pci_invariants(struct cas *cp)
{
 struct pci_dev *pdev = cp->pdev;

 cp->cas_flags = 0;
 if ((pdev->vendor == PCI_VENDOR_ID_SUN) &&
     (pdev->device == PCI_DEVICE_ID_SUN_CASSINI)) {
  if (pdev->revision >= CAS_ID_REVPLUS)
   cp->cas_flags |= CAS_FLAG_REG_PLUS;
  if (pdev->revision < CAS_ID_REVPLUS02u)
   cp->cas_flags |= CAS_FLAG_TARGET_ABORT;




  if (pdev->revision < CAS_ID_REV2)
   cp->cas_flags |= CAS_FLAG_NO_HW_CSUM;
 } else {

  cp->cas_flags |= CAS_FLAG_REG_PLUS;




  if ((pdev->vendor == PCI_VENDOR_ID_NS) &&
      (pdev->device == PCI_DEVICE_ID_NS_SATURN))
   cp->cas_flags |= CAS_FLAG_SATURN;
 }
}
