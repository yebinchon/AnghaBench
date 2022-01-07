
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidev_info {scalar_t__ pdi_pcibus_info; } ;
struct pcibus_info {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ ATE_SWAP_OFF (int ) ;
 int IOPG (scalar_t__) ;
 scalar_t__ IS_PCI32_MAPPED (int ) ;
 scalar_t__ PCI32_MAPPED_BASE ;
 struct pcidev_info* SN_PCIDEV_INFO (struct pci_dev*) ;
 int pcibr_ate_free (struct pcibus_info*,int) ;

void
pcibr_dma_unmap(struct pci_dev *hwdev, dma_addr_t dma_handle, int direction)
{
 struct pcidev_info *pcidev_info = SN_PCIDEV_INFO(hwdev);
 struct pcibus_info *pcibus_info =
     (struct pcibus_info *)pcidev_info->pdi_pcibus_info;

 if (IS_PCI32_MAPPED(dma_handle)) {
  int ate_index;

  ate_index =
      IOPG((ATE_SWAP_OFF(dma_handle) - PCI32_MAPPED_BASE));
  pcibr_ate_free(pcibus_info, ate_index);
 }
}
