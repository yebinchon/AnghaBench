
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int cap_mask; } ;
struct dma_chan {struct dma_device* device; } ;
typedef int ssize_t ;


 int DMA_INTERRUPT ;
 int DMA_MEMSET ;
 int DMA_PQ ;
 int DMA_PQ_VAL ;
 int DMA_XOR ;
 int DMA_XOR_VAL ;
 scalar_t__ dma_has_cap (int ,int ) ;
 int sprintf (char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static ssize_t cap_show(struct dma_chan *c, char *page)
{
 struct dma_device *dma = c->device;

 return sprintf(page, "copy%s%s%s%s%s%s\n",
         dma_has_cap(DMA_PQ, dma->cap_mask) ? " pq" : "",
         dma_has_cap(DMA_PQ_VAL, dma->cap_mask) ? " pq_val" : "",
         dma_has_cap(DMA_XOR, dma->cap_mask) ? " xor" : "",
         dma_has_cap(DMA_XOR_VAL, dma->cap_mask) ? " xor_val" : "",
         dma_has_cap(DMA_MEMSET, dma->cap_mask) ? " fill" : "",
         dma_has_cap(DMA_INTERRUPT, dma->cap_mask) ? " intr" : "");

}
