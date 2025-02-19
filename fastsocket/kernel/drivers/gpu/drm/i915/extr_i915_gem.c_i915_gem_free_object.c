
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int size; scalar_t__ import_attach; struct drm_device* dev; } ;
struct drm_i915_gem_object {int bit_17; TYPE_4__ base; int pages; scalar_t__ pages_pin_count; scalar_t__ pin_count; scalar_t__ phys_obj; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_6__ {int interruptible; } ;
struct TYPE_7__ {TYPE_1__ mm; } ;
typedef TYPE_2__ drm_i915_private_t ;


 int BUG_ON (int ) ;
 int ERESTARTSYS ;
 scalar_t__ WARN_ON (int) ;
 int drm_gem_object_release (TYPE_4__*) ;
 int drm_prime_gem_destroy (TYPE_4__*,int *) ;
 int i915_gem_detach_phys_object (struct drm_device*,struct drm_i915_gem_object*) ;
 int i915_gem_info_remove_obj (TYPE_2__*,int ) ;
 int i915_gem_object_free (struct drm_i915_gem_object*) ;
 int i915_gem_object_free_mmap_offset (struct drm_i915_gem_object*) ;
 int i915_gem_object_put_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_release_stolen (struct drm_i915_gem_object*) ;
 int i915_gem_object_unbind (struct drm_i915_gem_object*) ;
 int kfree (int ) ;
 struct drm_i915_gem_object* to_intel_bo (struct drm_gem_object*) ;
 int trace_i915_gem_object_destroy (struct drm_i915_gem_object*) ;

void i915_gem_free_object(struct drm_gem_object *gem_obj)
{
 struct drm_i915_gem_object *obj = to_intel_bo(gem_obj);
 struct drm_device *dev = obj->base.dev;
 drm_i915_private_t *dev_priv = dev->dev_private;

 trace_i915_gem_object_destroy(obj);

 if (obj->phys_obj)
  i915_gem_detach_phys_object(dev, obj);

 obj->pin_count = 0;
 if (WARN_ON(i915_gem_object_unbind(obj) == -ERESTARTSYS)) {
  bool was_interruptible;

  was_interruptible = dev_priv->mm.interruptible;
  dev_priv->mm.interruptible = 0;

  WARN_ON(i915_gem_object_unbind(obj));

  dev_priv->mm.interruptible = was_interruptible;
 }

 obj->pages_pin_count = 0;
 i915_gem_object_put_pages(obj);
 i915_gem_object_free_mmap_offset(obj);
 i915_gem_object_release_stolen(obj);

 BUG_ON(obj->pages);

 if (obj->base.import_attach)
  drm_prime_gem_destroy(&obj->base, ((void*)0));

 drm_gem_object_release(&obj->base);
 i915_gem_info_remove_obj(dev_priv, obj->base.size);

 kfree(obj->bit_17);
 i915_gem_object_free(obj);
}
