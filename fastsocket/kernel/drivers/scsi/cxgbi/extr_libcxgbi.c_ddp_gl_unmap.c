
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct cxgbi_gather_list {int nelem; int * phys_addr; } ;


 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int dma_unmap_page (int *,int ,int ,int ) ;

__attribute__((used)) static inline void ddp_gl_unmap(struct pci_dev *pdev,
     struct cxgbi_gather_list *gl)
{
 int i;

 for (i = 0; i < gl->nelem; i++)
  dma_unmap_page(&pdev->dev, gl->phys_addr[i], PAGE_SIZE,
    PCI_DMA_FROMDEVICE);
}
