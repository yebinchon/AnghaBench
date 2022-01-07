
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct iommu {unsigned long dma_addr_mask; } ;
struct TYPE_2__ {struct iommu* iommu; } ;
struct device {int * bus; TYPE_1__ archdata; } ;


 int pci64_dma_supported (int ,unsigned long) ;
 int pci_bus_type ;
 int to_pci_dev (struct device*) ;

int dma_supported(struct device *dev, u64 device_mask)
{
 struct iommu *iommu = dev->archdata.iommu;
 u64 dma_addr_mask = iommu->dma_addr_mask;

 if (device_mask >= (1UL << 32UL))
  return 0;

 if ((device_mask & dma_addr_mask) == dma_addr_mask)
  return 1;






 return 0;
}
