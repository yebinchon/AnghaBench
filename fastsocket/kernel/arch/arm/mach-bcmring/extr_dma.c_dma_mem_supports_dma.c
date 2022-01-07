
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DMA_MemType_t ;


 scalar_t__ DMA_MEM_TYPE_DMA ;
 scalar_t__ DMA_MEM_TYPE_KMALLOC ;
 scalar_t__ DMA_MEM_TYPE_USER ;
 scalar_t__ dma_mem_type (void*) ;

int dma_mem_supports_dma(void *addr)
{
 DMA_MemType_t memType = dma_mem_type(addr);

 return (memType == DMA_MEM_TYPE_DMA)



     || (memType == DMA_MEM_TYPE_USER);
}
