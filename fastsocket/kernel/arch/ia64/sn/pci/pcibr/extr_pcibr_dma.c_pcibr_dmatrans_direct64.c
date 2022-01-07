
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pcidev_info {TYPE_1__* pdi_linux_pcidev; TYPE_2__* pdi_host_pcidev_info; } ;
struct pcibus_info {scalar_t__ pbi_hub_xid; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {scalar_t__ pdi_pcibus_info; } ;
struct TYPE_3__ {int devfn; } ;


 scalar_t__ IS_PCIX (struct pcibus_info*) ;
 scalar_t__ IS_PIC_SOFT (struct pcibus_info*) ;
 int PCI64_ATTR_PREF ;
 int PCI64_ATTR_VIRTUAL ;
 scalar_t__ PCI_FUNC (int ) ;
 int PHYS_TO_DMA (int) ;
 int PHYS_TO_TIODMA (int) ;
 int PIC_PCI64_ATTR_TARG_SHFT ;
 scalar_t__ SN_DMA_ADDRTYPE (int) ;
 scalar_t__ SN_DMA_ADDR_PHYS ;
 int SN_DMA_MSI ;
 int TIOCP_PCI64_CMDTYPE_MEM ;
 int TIOCP_PCI64_CMDTYPE_MSI ;

__attribute__((used)) static dma_addr_t
pcibr_dmatrans_direct64(struct pcidev_info * info, u64 paddr,
   u64 dma_attributes, int dma_flags)
{
 struct pcibus_info *pcibus_info = (struct pcibus_info *)
     ((info->pdi_host_pcidev_info)->pdi_pcibus_info);
 u64 pci_addr;


 if (SN_DMA_ADDRTYPE(dma_flags) == SN_DMA_ADDR_PHYS)
  pci_addr = IS_PIC_SOFT(pcibus_info) ?
    PHYS_TO_DMA(paddr) :
    PHYS_TO_TIODMA(paddr);
 else
  pci_addr = paddr;
 pci_addr |= dma_attributes;


 if (IS_PCIX(pcibus_info))
  pci_addr &= ~PCI64_ATTR_PREF;


 if (IS_PIC_SOFT(pcibus_info)) {
  pci_addr |=
      ((u64) pcibus_info->
       pbi_hub_xid << PIC_PCI64_ATTR_TARG_SHFT);
 } else
  pci_addr |= (dma_flags & SN_DMA_MSI) ?
    TIOCP_PCI64_CMDTYPE_MSI :
    TIOCP_PCI64_CMDTYPE_MEM;


 if (!IS_PCIX(pcibus_info) && PCI_FUNC(info->pdi_linux_pcidev->devfn))
  pci_addr |= PCI64_ATTR_VIRTUAL;

 return pci_addr;
}
