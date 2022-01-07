
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct drm_i915_gem_object {TYPE_3__* pages; int has_dma_mapping; TYPE_1__ base; } ;
struct drm_device {TYPE_2__* pdev; struct drm_i915_private* dev_private; } ;
struct TYPE_6__ {int nents; int sgl; } ;
struct TYPE_5__ {int dev; } ;


 int PCI_DMA_BIDIRECTIONAL ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 int do_idling (struct drm_i915_private*) ;
 int undo_idling (struct drm_i915_private*,int) ;

void i915_gem_gtt_finish_object(struct drm_i915_gem_object *obj)
{
 struct drm_device *dev = obj->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 bool interruptible;

 interruptible = do_idling(dev_priv);

 if (!obj->has_dma_mapping)
  dma_unmap_sg(&dev->pdev->dev,
        obj->pages->sgl, obj->pages->nents,
        PCI_DMA_BIDIRECTIONAL);

 undo_idling(dev_priv, interruptible);
}
