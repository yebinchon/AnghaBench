
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_loaf {void* cpu_base; int length; size_t dma_free; void* cpu_free; } ;
typedef size_t dma_addr_t ;


 int BUG_ON (int) ;

__attribute__((used)) static void *slice_dma_loaf(struct dma_loaf *loaf, size_t len,
     dma_addr_t *dma_handle)
{
 void *cpu_end = loaf->cpu_free + len;
 void *cpu_addr = loaf->cpu_free;

 BUG_ON(cpu_end > loaf->cpu_base + loaf->length);
 *dma_handle = loaf->dma_free;
 loaf->cpu_free = cpu_end;
 loaf->dma_free += len;
 return cpu_addr;
}
