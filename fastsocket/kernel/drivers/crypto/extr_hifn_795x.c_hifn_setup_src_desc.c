
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct hifn_dma {int srci; int srcu; TYPE_1__* srcr; } ;
struct hifn_device {int flags; int pdev; scalar_t__ desc_virt; } ;
typedef unsigned int dma_addr_t ;
struct TYPE_2__ {void* l; void* p; } ;


 int HIFN_1_DMA_CSR ;
 int HIFN_DMACSR_S_CTRL_ENA ;
 unsigned int HIFN_D_JUMP ;
 unsigned int HIFN_D_LAST ;
 unsigned int HIFN_D_MASKDONEIRQ ;
 int HIFN_D_SRC_RSIZE ;
 unsigned int HIFN_D_VALID ;
 int HIFN_FLAG_SRC_BUSY ;
 int PCI_DMA_TODEVICE ;
 void* __cpu_to_le32 (unsigned int) ;
 int hifn_write_1 (struct hifn_device*,int ,int ) ;
 unsigned int pci_map_page (int ,struct page*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int hifn_setup_src_desc(struct hifn_device *dev, struct page *page,
  unsigned int offset, unsigned int size, int last)
{
 struct hifn_dma *dma = (struct hifn_dma *)dev->desc_virt;
 int idx;
 dma_addr_t addr;

 addr = pci_map_page(dev->pdev, page, offset, size, PCI_DMA_TODEVICE);

 idx = dma->srci;

 dma->srcr[idx].p = __cpu_to_le32(addr);
 dma->srcr[idx].l = __cpu_to_le32(size | HIFN_D_VALID |
   HIFN_D_MASKDONEIRQ | (last ? HIFN_D_LAST : 0));

 if (++idx == HIFN_D_SRC_RSIZE) {
  dma->srcr[idx].l = __cpu_to_le32(HIFN_D_VALID |
    HIFN_D_JUMP | HIFN_D_MASKDONEIRQ |
    (last ? HIFN_D_LAST : 0));
  idx = 0;
 }

 dma->srci = idx;
 dma->srcu++;

 if (!(dev->flags & HIFN_FLAG_SRC_BUSY)) {
  hifn_write_1(dev, HIFN_1_DMA_CSR, HIFN_DMACSR_S_CTRL_ENA);
  dev->flags |= HIFN_FLAG_SRC_BUSY;
 }

 return size;
}
