
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct cxgbi_gather_list {int nelem; int * pages; int * phys_addr; } ;


 int CXGBI_DBG_DDP ;
 int EINVAL ;
 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int ddp_gl_unmap (struct pci_dev*,struct cxgbi_gather_list*) ;
 int dma_map_page (int *,int ,int ,int ,int ) ;
 int dma_mapping_error (int *,int ) ;
 int log_debug (int,char*,int,int ,struct pci_dev*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int ddp_gl_map(struct pci_dev *pdev,
        struct cxgbi_gather_list *gl)
{
 int i;

 for (i = 0; i < gl->nelem; i++) {
  gl->phys_addr[i] = dma_map_page(&pdev->dev, gl->pages[i], 0,
      PAGE_SIZE,
      PCI_DMA_FROMDEVICE);
  if (unlikely(dma_mapping_error(&pdev->dev, gl->phys_addr[i]))) {
   log_debug(1 << CXGBI_DBG_DDP,
    "page %d 0x%p, 0x%p dma mapping err.\n",
    i, gl->pages[i], pdev);
   goto unmap;
  }
 }
 return i;
unmap:
 if (i) {
  unsigned int nelem = gl->nelem;

  gl->nelem = i;
  ddp_gl_unmap(pdev, gl);
  gl->nelem = nelem;
 }
 return -EINVAL;
}
