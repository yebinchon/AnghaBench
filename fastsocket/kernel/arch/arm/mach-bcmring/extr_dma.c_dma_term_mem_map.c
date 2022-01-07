
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ DMA_MemMap_t ;


 int down (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int up (int *) ;

int dma_term_mem_map(DMA_MemMap_t *memMap)
{
 down(&memMap->lock);



 up(&memMap->lock);
 memset(memMap, 0, sizeof(*memMap));

 return 0;
}
