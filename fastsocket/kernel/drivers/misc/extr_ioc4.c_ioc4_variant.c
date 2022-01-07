
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_3__* bus; } ;
struct ioc4_driver_data {TYPE_2__* idd_pdev; } ;
struct TYPE_6__ {scalar_t__ number; } ;
struct TYPE_5__ {TYPE_1__* bus; } ;
struct TYPE_4__ {scalar_t__ number; } ;


 unsigned int IOC4_VARIANT_IO10 ;
 unsigned int IOC4_VARIANT_IO9 ;
 unsigned int IOC4_VARIANT_PCI_RT ;
 int PCI_DEVICE_ID_QLOGIC_ISP12160 ;
 int PCI_DEVICE_ID_VITESSE_VSC7174 ;
 int PCI_SLOT (int ) ;
 int PCI_VENDOR_ID_QLOGIC ;
 int PCI_VENDOR_ID_VITESSE ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;

__attribute__((used)) static unsigned int
ioc4_variant(struct ioc4_driver_data *idd)
{
 struct pci_dev *pdev = ((void*)0);
 int found = 0;


 do {
  pdev = pci_get_device(PCI_VENDOR_ID_QLOGIC,
          PCI_DEVICE_ID_QLOGIC_ISP12160, pdev);
  if (pdev &&
      idd->idd_pdev->bus->number == pdev->bus->number &&
      3 == PCI_SLOT(pdev->devfn))
   found = 1;
 } while (pdev && !found);
 if (((void*)0) != pdev) {
  pci_dev_put(pdev);
  return IOC4_VARIANT_IO9;
 }


 pdev = ((void*)0);
 do {
  pdev = pci_get_device(PCI_VENDOR_ID_VITESSE,
          PCI_DEVICE_ID_VITESSE_VSC7174, pdev);
  if (pdev &&
      idd->idd_pdev->bus->number == pdev->bus->number &&
      3 == PCI_SLOT(pdev->devfn))
   found = 1;
 } while (pdev && !found);
 if (((void*)0) != pdev) {
  pci_dev_put(pdev);
  return IOC4_VARIANT_IO10;
 }


 return IOC4_VARIANT_PCI_RT;
}
