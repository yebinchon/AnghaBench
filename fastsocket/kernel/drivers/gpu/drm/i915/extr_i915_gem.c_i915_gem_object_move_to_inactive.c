
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inactive_list; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct TYPE_4__ {int write_domain; struct drm_device* dev; } ;
struct drm_i915_gem_object {int fenced_gpu_access; TYPE_2__ base; scalar_t__ active; scalar_t__ last_fenced_seqno; scalar_t__ last_write_seqno; scalar_t__ last_read_seqno; int * ring; int ring_list; int mm_list; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int BUG_ON (int) ;
 int I915_GEM_GPU_DOMAINS ;
 int WARN_ON (int ) ;
 int drm_gem_object_unreference (TYPE_2__*) ;
 int i915_verify_lists (struct drm_device*) ;
 int list_del_init (int *) ;
 int list_move_tail (int *,int *) ;

__attribute__((used)) static void
i915_gem_object_move_to_inactive(struct drm_i915_gem_object *obj)
{
 struct drm_device *dev = obj->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;

 BUG_ON(obj->base.write_domain & ~I915_GEM_GPU_DOMAINS);
 BUG_ON(!obj->active);

 list_move_tail(&obj->mm_list, &dev_priv->mm.inactive_list);

 list_del_init(&obj->ring_list);
 obj->ring = ((void*)0);

 obj->last_read_seqno = 0;
 obj->last_write_seqno = 0;
 obj->base.write_domain = 0;

 obj->last_fenced_seqno = 0;
 obj->fenced_gpu_access = 0;

 obj->active = 0;
 drm_gem_object_unreference(&obj->base);

 WARN_ON(i915_verify_lists(dev));
}
