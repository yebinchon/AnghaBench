
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DMA_MemType_t ;


 int DMA_MEM_TYPE_DMA ;
 int DMA_MEM_TYPE_KMALLOC ;
 int DMA_MEM_TYPE_USER ;
 int DMA_MEM_TYPE_VMALLOC ;
 unsigned long PAGE_OFFSET ;
 unsigned long VMALLOC_END ;
 scalar_t__ is_vmalloc_addr (void*) ;

DMA_MemType_t dma_mem_type(void *addr)
{
 unsigned long addrVal = (unsigned long)addr;

 if (addrVal >= VMALLOC_END) {




  return DMA_MEM_TYPE_DMA;
 }





 if (is_vmalloc_addr(addr)) {



  return DMA_MEM_TYPE_VMALLOC;
 }

 if (addrVal >= PAGE_OFFSET) {




  return DMA_MEM_TYPE_KMALLOC;
 }

 return DMA_MEM_TYPE_USER;
}
