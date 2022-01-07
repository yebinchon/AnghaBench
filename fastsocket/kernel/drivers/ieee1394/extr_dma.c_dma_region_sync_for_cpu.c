
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_region {int direction; int * sglist; int dev; } ;


 int dma_region_find (struct dma_region*,unsigned long,int,unsigned long*) ;
 int pci_dma_sync_sg_for_cpu (int ,int *,int,int ) ;

void dma_region_sync_for_cpu(struct dma_region *dma, unsigned long offset,
        unsigned long len)
{
 int first, last;
 unsigned long rem = 0;

 if (!len)
  len = 1;

 first = dma_region_find(dma, offset, 0, &rem);
 last = dma_region_find(dma, rem + len - 1, first, &rem);

 pci_dma_sync_sg_for_cpu(dma->dev, &dma->sglist[first], last - first + 1,
    dma->direction);
}
