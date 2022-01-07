
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long dma_addr_t ;
struct TYPE_2__ {unsigned long sram_dma; } ;


 unsigned long SRAM_VIRT ;
 TYPE_1__ davinci_soc_info ;
 unsigned long gen_pool_alloc (int ,size_t) ;
 int sram_pool ;

void *sram_alloc(size_t len, dma_addr_t *dma)
{
 unsigned long vaddr;
 dma_addr_t dma_base = davinci_soc_info.sram_dma;

 if (dma)
  *dma = 0;
 if (!sram_pool || (dma && !dma_base))
  return ((void*)0);

 vaddr = gen_pool_alloc(sram_pool, len);
 if (!vaddr)
  return ((void*)0);

 if (dma)
  *dma = dma_base + (vaddr - SRAM_VIRT);
 return (void *)vaddr;

}
