
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* dev; } ;
struct drm_i915_gem_object {TYPE_4__* pages; TYPE_3__ base; scalar_t__ has_dma_mapping; } ;
struct TYPE_8__ {int nents; int sgl; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int ENOSPC ;
 int PCI_DMA_BIDIRECTIONAL ;
 int dma_map_sg (int *,int ,int ,int ) ;

int i915_gem_gtt_prepare_object(struct drm_i915_gem_object *obj)
{
 if (obj->has_dma_mapping)
  return 0;

 if (!dma_map_sg(&obj->base.dev->pdev->dev,
   obj->pages->sgl, obj->pages->nents,
   PCI_DMA_BIDIRECTIONAL))
  return -ENOSPC;

 return 0;
}
