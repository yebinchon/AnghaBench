
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gtt_insert_entries; int gtt_clear_range; int do_idle_maps; } ;
struct drm_i915_private {TYPE_1__ gtt; TYPE_2__* dev; int bridge_dev; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef int phys_addr_t ;
struct TYPE_4__ {int pdev; } ;


 int DRM_ERROR (char*) ;
 int EIO ;
 int i915_ggtt_clear_range ;
 int i915_ggtt_insert_entries ;
 int intel_gmch_probe (int ,int ,int *) ;
 int intel_gtt_get (size_t*,size_t*,int *,unsigned long*) ;
 int needs_idle_maps (TYPE_2__*) ;

__attribute__((used)) static int i915_gmch_probe(struct drm_device *dev,
      size_t *gtt_total,
      size_t *stolen,
      phys_addr_t *mappable_base,
      unsigned long *mappable_end)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;

 ret = intel_gmch_probe(dev_priv->bridge_dev, dev_priv->dev->pdev, ((void*)0));
 if (!ret) {
  DRM_ERROR("failed to set up gmch\n");
  return -EIO;
 }

 intel_gtt_get(gtt_total, stolen, mappable_base, mappable_end);

 dev_priv->gtt.do_idle_maps = needs_idle_maps(dev_priv->dev);
 dev_priv->gtt.gtt_clear_range = i915_ggtt_clear_range;
 dev_priv->gtt.gtt_insert_entries = i915_ggtt_insert_entries;

 return 0;
}
