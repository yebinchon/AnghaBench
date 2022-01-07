
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_region {int n_dma_pages; int * sglist; } ;


 int BUG_ON (int) ;
 unsigned long sg_dma_len (int *) ;

__attribute__((used)) static inline int dma_region_find(struct dma_region *dma, unsigned long offset,
      unsigned int start, unsigned long *rem)
{
 int i;
 unsigned long off = offset;

 for (i = start; i < dma->n_dma_pages; i++) {
  if (off < sg_dma_len(&dma->sglist[i])) {
   *rem = off;
   break;
  }

  off -= sg_dma_len(&dma->sglist[i]);
 }

 BUG_ON(i >= dma->n_dma_pages);

 return i;
}
