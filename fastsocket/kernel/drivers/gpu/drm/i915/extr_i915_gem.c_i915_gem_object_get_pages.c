
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unbound_list; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct drm_i915_gem_object_ops {int (* get_pages ) (struct drm_i915_gem_object*) ;} ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct drm_i915_gem_object {scalar_t__ madv; int gtt_list; int pages_pin_count; scalar_t__ pages; struct drm_i915_gem_object_ops* ops; TYPE_3__ base; } ;
struct TYPE_5__ {struct drm_i915_private* dev_private; } ;


 int BUG_ON (int ) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 scalar_t__ I915_MADV_WILLNEED ;
 int list_add_tail (int *,int *) ;
 int stub1 (struct drm_i915_gem_object*) ;

int
i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
{
 struct drm_i915_private *dev_priv = obj->base.dev->dev_private;
 const struct drm_i915_gem_object_ops *ops = obj->ops;
 int ret;

 if (obj->pages)
  return 0;

 if (obj->madv != I915_MADV_WILLNEED) {
  DRM_ERROR("Attempting to obtain a purgeable object\n");
  return -EINVAL;
 }

 BUG_ON(obj->pages_pin_count);

 ret = ops->get_pages(obj);
 if (ret)
  return ret;

 list_add_tail(&obj->gtt_list, &dev_priv->mm.unbound_list);
 return 0;
}
