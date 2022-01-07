
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ coherent_dma_mask; } ;
struct pci_dev {int class; scalar_t__ dma_mask; TYPE_1__ dev; int bus; } ;


 int IDENTMAP_ALL ;
 int IDENTMAP_AZALIA ;
 int IDENTMAP_GFX ;
 scalar_t__ IS_AZALIA (struct pci_dev*) ;
 scalar_t__ IS_GFX_DEVICE (struct pci_dev*) ;
 int PCI_CLASS_BRIDGE_PCI ;
 int PCI_CLASS_SERIAL_USB ;
 scalar_t__ PCI_EXP_TYPE_PCI_BRIDGE ;
 scalar_t__ device_has_rmrr (struct pci_dev*) ;
 scalar_t__ dma_get_required_mask (TYPE_1__*) ;
 int iommu_identity_mapping ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_is_root_bus (int ) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;

__attribute__((used)) static int iommu_should_identity_map(struct pci_dev *pdev, int startup)
{
 if (device_has_rmrr(pdev) &&
     (pdev->class >> 8) != PCI_CLASS_SERIAL_USB)
  return 0;

 if ((iommu_identity_mapping & IDENTMAP_AZALIA) && IS_AZALIA(pdev))
  return 1;

 if ((iommu_identity_mapping & IDENTMAP_GFX) && IS_GFX_DEVICE(pdev))
  return 1;

 if (!(iommu_identity_mapping & IDENTMAP_ALL))
  return 0;
 if (!pci_is_pcie(pdev)) {
  if (!pci_is_root_bus(pdev->bus))
   return 0;
  if (pdev->class >> 8 == PCI_CLASS_BRIDGE_PCI)
   return 0;
 } else if (pci_pcie_type(pdev) == PCI_EXP_TYPE_PCI_BRIDGE)
  return 0;






 if (!startup) {




  u64 dma_mask = pdev->dma_mask;

  if (pdev->dev.coherent_dma_mask &&
      pdev->dev.coherent_dma_mask < dma_mask)
   dma_mask = pdev->dev.coherent_dma_mask;

  return dma_mask >= dma_get_required_mask(&pdev->dev);
 }

 return 1;
}
