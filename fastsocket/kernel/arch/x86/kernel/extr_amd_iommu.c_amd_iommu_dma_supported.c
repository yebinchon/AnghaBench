
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u16 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct device {int * bus; } ;
struct TYPE_2__ {int number; } ;


 scalar_t__ amd_iommu_last_bdf ;
 scalar_t__ calc_devid (int ,int ) ;
 int pci_bus_type ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int amd_iommu_dma_supported(struct device *dev, u64 mask)
{
 u16 bdf;
 struct pci_dev *pcidev;


 if (!dev || dev->bus != &pci_bus_type)
  return 0;

 pcidev = to_pci_dev(dev);

 bdf = calc_devid(pcidev->bus->number, pcidev->devfn);


 if (bdf > amd_iommu_last_bdf)
  return 0;

 return 1;
}
