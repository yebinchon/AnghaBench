
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_region {scalar_t__ n_pages; int * kvirt; int * sglist; int * dev; scalar_t__ n_dma_pages; int direction; } ;


 int pci_unmap_sg (int *,int *,scalar_t__,int ) ;
 int vfree (int *) ;

void dma_region_free(struct dma_region *dma)
{
 if (dma->n_dma_pages) {
  pci_unmap_sg(dma->dev, dma->sglist, dma->n_pages,
        dma->direction);
  dma->n_dma_pages = 0;
  dma->dev = ((void*)0);
 }

 vfree(dma->sglist);
 dma->sglist = ((void*)0);

 vfree(dma->kvirt);
 dma->kvirt = ((void*)0);
 dma->n_pages = 0;
}
