
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidev_info {int dummy; } ;
struct pci_dev {int dma_mask; } ;
typedef scalar_t__ dma_addr_t ;


 int PCI32_ATE_PREF ;
 int PCI64_ATTR_PREF ;
 struct pcidev_info* SN_PCIDEV_INFO (struct pci_dev*) ;
 scalar_t__ pcibr_dmamap_ate32 (struct pcidev_info*,unsigned long,size_t,int ,int) ;
 scalar_t__ pcibr_dmatrans_direct32 (struct pcidev_info*,unsigned long,size_t,int ,int) ;
 scalar_t__ pcibr_dmatrans_direct64 (struct pcidev_info*,unsigned long,int ,int) ;

dma_addr_t
pcibr_dma_map(struct pci_dev * hwdev, unsigned long phys_addr, size_t size, int dma_flags)
{
 dma_addr_t dma_handle;
 struct pcidev_info *pcidev_info = SN_PCIDEV_INFO(hwdev);


 if (hwdev->dma_mask < 0x7fffffff) {
  return 0;
 }

 if (hwdev->dma_mask == ~0UL) {





  dma_handle = pcibr_dmatrans_direct64(pcidev_info, phys_addr,
           PCI64_ATTR_PREF, dma_flags);
 } else {

  dma_handle = pcibr_dmatrans_direct32(pcidev_info, phys_addr,
           size, 0, dma_flags);
  if (!dma_handle) {





   dma_handle = pcibr_dmamap_ate32(pcidev_info, phys_addr,
       size, PCI32_ATE_PREF,
       dma_flags);
  }
 }

 return dma_handle;
}
