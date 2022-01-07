
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_tt {scalar_t__ sg; } ;
struct ttm_mem_reg {struct nouveau_mem* mm_node; } ;
struct TYPE_2__ {int dma_address; } ;
struct nouveau_sgdma_be {TYPE_1__ ttm; } ;
struct nouveau_mem {int pages; scalar_t__ sg; } ;



__attribute__((used)) static int
nv50_sgdma_bind(struct ttm_tt *ttm, struct ttm_mem_reg *mem)
{
 struct nouveau_sgdma_be *nvbe = (struct nouveau_sgdma_be *)ttm;
 struct nouveau_mem *node = mem->mm_node;


 if (ttm->sg) {
  node->sg = ttm->sg;
 } else
  node->pages = nvbe->ttm.dma_address;
 return 0;
}
