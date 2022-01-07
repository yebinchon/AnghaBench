
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct drm_i915_gem_object* obj; } ;
struct intel_ring_buffer {TYPE_2__ status_page; } ;
struct drm_i915_gem_object {int base; TYPE_1__* pages; } ;
struct TYPE_3__ {int sgl; } ;


 int drm_gem_object_unreference (int *) ;
 int i915_gem_object_unpin (struct drm_i915_gem_object*) ;
 int kunmap (int ) ;
 int sg_page (int ) ;

__attribute__((used)) static void cleanup_status_page(struct intel_ring_buffer *ring)
{
 struct drm_i915_gem_object *obj;

 obj = ring->status_page.obj;
 if (obj == ((void*)0))
  return;

 kunmap(sg_page(obj->pages->sgl));
 i915_gem_object_unpin(obj);
 drm_gem_object_unreference(&obj->base);
 ring->status_page.obj = ((void*)0);
}
