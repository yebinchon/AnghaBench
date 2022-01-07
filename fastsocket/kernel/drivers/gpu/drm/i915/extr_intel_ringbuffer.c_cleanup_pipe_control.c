
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_control {struct drm_i915_gem_object* obj; } ;
struct intel_ring_buffer {struct pipe_control* private; } ;
struct drm_i915_gem_object {int base; TYPE_1__* pages; } ;
struct TYPE_2__ {int sgl; } ;


 int drm_gem_object_unreference (int *) ;
 int i915_gem_object_unpin (struct drm_i915_gem_object*) ;
 int kfree (struct pipe_control*) ;
 int kunmap (int ) ;
 int sg_page (int ) ;

__attribute__((used)) static void
cleanup_pipe_control(struct intel_ring_buffer *ring)
{
 struct pipe_control *pc = ring->private;
 struct drm_i915_gem_object *obj;

 if (!ring->private)
  return;

 obj = pc->obj;

 kunmap(sg_page(obj->pages->sgl));
 i915_gem_object_unpin(obj);
 drm_gem_object_unreference(&obj->base);

 kfree(pc);
 ring->private = ((void*)0);
}
