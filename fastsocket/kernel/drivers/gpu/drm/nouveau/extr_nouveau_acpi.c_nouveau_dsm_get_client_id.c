
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ vendor; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 scalar_t__ PCI_VENDOR_ID_INTEL ;
 int VGA_SWITCHEROO_DIS ;
 int VGA_SWITCHEROO_IGD ;

__attribute__((used)) static int nouveau_dsm_get_client_id(struct pci_dev *pdev)
{

 if (pdev->vendor == PCI_VENDOR_ID_INTEL)
  return VGA_SWITCHEROO_IGD;


 if (pdev->bus->number == 0)
  return VGA_SWITCHEROO_IGD;

 return VGA_SWITCHEROO_DIS;
}
