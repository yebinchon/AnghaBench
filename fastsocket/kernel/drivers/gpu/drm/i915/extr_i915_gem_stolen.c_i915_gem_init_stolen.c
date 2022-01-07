
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stolen_size; } ;
struct TYPE_4__ {scalar_t__ stolen_base; int stolen; } ;
struct drm_i915_private {TYPE_1__ gtt; TYPE_2__ mm; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,int ,scalar_t__) ;
 int drm_mm_init (int *,int ,int ) ;
 scalar_t__ i915_stolen_to_physical (struct drm_device*) ;

int i915_gem_init_stolen(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 dev_priv->mm.stolen_base = i915_stolen_to_physical(dev);
 if (dev_priv->mm.stolen_base == 0)
  return 0;

 DRM_DEBUG_KMS("found %zd bytes of stolen memory at %08lx\n",
        dev_priv->gtt.stolen_size, dev_priv->mm.stolen_base);


 drm_mm_init(&dev_priv->mm.stolen, 0, dev_priv->gtt.stolen_size);

 return 0;
}
