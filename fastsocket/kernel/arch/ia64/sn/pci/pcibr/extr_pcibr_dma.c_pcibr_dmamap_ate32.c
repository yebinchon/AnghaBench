
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct pcidev_info {TYPE_1__* pdi_linux_pcidev; struct pcidev_info* pdi_host_pcidev_info; scalar_t__ pdi_pcibus_info; } ;
struct pcibus_info {int pbi_hub_xid; int* pbi_devreg; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int devfn; } ;


 int ATE_SWAP_ON (int) ;
 int IOPG (size_t) ;
 int IOPGOFF (int) ;
 int IOPGSIZE ;
 scalar_t__ IS_PCIX (struct pcibus_info*) ;
 scalar_t__ IS_PIC_SOFT (struct pcibus_info*) ;
 scalar_t__ IS_TIOCP_SOFT (struct pcibus_info*) ;
 int MINIMAL_ATE_FLAG (int,size_t) ;
 int PCI32_ATE_MSI ;
 int PCI32_ATE_PIO ;
 int PCI32_ATE_PREF ;
 int PCI32_ATE_V ;
 int PCI32_MAPPED_BASE ;
 int PCIBR_DEV_SWAP_DIR ;
 size_t PCI_SLOT (int ) ;
 int PHYS_TO_DMA (int) ;
 int PHYS_TO_TIODMA (int) ;
 int PIC_ATE_TARGETID_SHFT ;
 scalar_t__ SN_DMA_ADDRTYPE (int) ;
 int SN_DMA_ADDR_PHYS ;
 int SN_DMA_MSI ;
 int ate_write (struct pcibus_info*,int,int,int) ;
 int pcibr_ate_alloc (struct pcibus_info*,int) ;

__attribute__((used)) static dma_addr_t
pcibr_dmamap_ate32(struct pcidev_info *info,
     u64 paddr, size_t req_size, u64 flags, int dma_flags)
{

 struct pcidev_info *pcidev_info = info->pdi_host_pcidev_info;
 struct pcibus_info *pcibus_info = (struct pcibus_info *)pcidev_info->
     pdi_pcibus_info;
 u8 internal_device = (PCI_SLOT(pcidev_info->pdi_host_pcidev_info->
         pdi_linux_pcidev->devfn)) - 1;
 int ate_count;
 int ate_index;
 u64 ate_flags = flags | PCI32_ATE_V;
 u64 ate;
 u64 pci_addr;
 u64 xio_addr;
 u64 offset;


 if (IS_PIC_SOFT(pcibus_info) && IS_PCIX(pcibus_info)) {
  return 0;
 }


 if (!(MINIMAL_ATE_FLAG(paddr, req_size))) {
  ate_count = IOPG((IOPGSIZE - 1)
     +req_size
     - 1) + 1;
 } else {
  ate_count = IOPG(req_size
     - 1) + 1;
 }


 ate_index = pcibr_ate_alloc(pcibus_info, ate_count);
 if (ate_index < 0)
  return 0;


 if (IS_PCIX(pcibus_info))
  ate_flags &= ~(PCI32_ATE_PREF);

 if (SN_DMA_ADDRTYPE(dma_flags == SN_DMA_ADDR_PHYS))
  xio_addr = IS_PIC_SOFT(pcibus_info) ? PHYS_TO_DMA(paddr) :
                PHYS_TO_TIODMA(paddr);
 else
  xio_addr = paddr;

 offset = IOPGOFF(xio_addr);
 ate = ate_flags | (xio_addr - offset);


 if (IS_PIC_SOFT(pcibus_info)) {
  ate |= (pcibus_info->pbi_hub_xid << PIC_ATE_TARGETID_SHFT);
 }





 if (dma_flags & SN_DMA_MSI) {
  ate |= PCI32_ATE_MSI;
  if (IS_TIOCP_SOFT(pcibus_info))
   ate |= PCI32_ATE_PIO;
 }

 ate_write(pcibus_info, ate_index, ate_count, ate);




 pci_addr = PCI32_MAPPED_BASE + offset + IOPGSIZE * ate_index;





 if (pcibus_info->pbi_devreg[internal_device] & PCIBR_DEV_SWAP_DIR)
  ATE_SWAP_ON(pci_addr);


 return pci_addr;
}
