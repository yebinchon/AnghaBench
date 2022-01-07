
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct dma_region {struct scatterlist* sglist; } ;
typedef scalar_t__ dma_addr_t ;


 size_t dma_region_find (struct dma_region*,unsigned long,int ,unsigned long*) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;

dma_addr_t dma_region_offset_to_bus(struct dma_region * dma,
        unsigned long offset)
{
 unsigned long rem = 0;

 struct scatterlist *sg =
     &dma->sglist[dma_region_find(dma, offset, 0, &rem)];
 return sg_dma_address(sg) + rem;
}
