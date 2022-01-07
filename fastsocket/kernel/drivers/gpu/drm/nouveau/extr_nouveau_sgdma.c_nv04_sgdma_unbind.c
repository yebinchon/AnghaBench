
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_tt {int dummy; } ;
struct nouveau_sgdma_be {TYPE_1__* node; } ;
struct TYPE_2__ {int * vma; } ;


 int nouveau_vm_unmap (int *) ;

__attribute__((used)) static int
nv04_sgdma_unbind(struct ttm_tt *ttm)
{
 struct nouveau_sgdma_be *nvbe = (struct nouveau_sgdma_be *)ttm;
 nouveau_vm_unmap(&nvbe->node->vma[0]);
 return 0;
}
