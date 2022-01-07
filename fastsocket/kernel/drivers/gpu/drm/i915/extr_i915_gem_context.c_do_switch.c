
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_ring_buffer {struct drm_i915_gem_object* last_context_obj; } ;
struct i915_hw_context {int is_initialized; struct drm_i915_gem_object* obj; struct intel_ring_buffer* ring; } ;
struct TYPE_3__ {int read_domains; } ;
struct drm_i915_gem_object {scalar_t__ pin_count; int dirty; TYPE_1__ base; struct intel_ring_buffer* ring; int cache_level; int has_global_gtt_mapping; } ;


 int BUG_ON (int) ;
 int CONTEXT_ALIGN ;
 int I915_GEM_DOMAIN_INSTRUCTION ;
 int MI_FORCE_RESTORE ;
 int MI_RESTORE_INHIBIT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int drm_gem_object_reference (TYPE_1__*) ;
 int drm_gem_object_unreference (TYPE_1__*) ;
 int i915_gem_gtt_bind_object (struct drm_i915_gem_object*,int ) ;
 int i915_gem_object_move_to_active (struct drm_i915_gem_object*,struct intel_ring_buffer*) ;
 int i915_gem_object_pin (struct drm_i915_gem_object*,int ,int,int) ;
 int i915_gem_object_set_to_gtt_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_unpin (struct drm_i915_gem_object*) ;
 scalar_t__ is_default_context (struct i915_hw_context*) ;
 int mi_set_context (struct intel_ring_buffer*,struct i915_hw_context*,int ) ;

__attribute__((used)) static int do_switch(struct i915_hw_context *to)
{
 struct intel_ring_buffer *ring = to->ring;
 struct drm_i915_gem_object *from_obj = ring->last_context_obj;
 u32 hw_flags = 0;
 int ret;

 BUG_ON(from_obj != ((void*)0) && from_obj->pin_count == 0);

 if (from_obj == to->obj)
  return 0;

 ret = i915_gem_object_pin(to->obj, CONTEXT_ALIGN, 0, 0);
 if (ret)
  return ret;






 ret = i915_gem_object_set_to_gtt_domain(to->obj, 0);
 if (ret) {
  i915_gem_object_unpin(to->obj);
  return ret;
 }

 if (!to->obj->has_global_gtt_mapping)
  i915_gem_gtt_bind_object(to->obj, to->obj->cache_level);

 if (!to->is_initialized || is_default_context(to))
  hw_flags |= MI_RESTORE_INHIBIT;
 else if (WARN_ON_ONCE(from_obj == to->obj))
  hw_flags |= MI_FORCE_RESTORE;

 ret = mi_set_context(ring, to, hw_flags);
 if (ret) {
  i915_gem_object_unpin(to->obj);
  return ret;
 }







 if (from_obj != ((void*)0)) {
  from_obj->base.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
  i915_gem_object_move_to_active(from_obj, ring);







  from_obj->dirty = 1;
  BUG_ON(from_obj->ring != ring);
  i915_gem_object_unpin(from_obj);

  drm_gem_object_unreference(&from_obj->base);
 }

 drm_gem_object_reference(&to->obj->base);
 ring->last_context_obj = to->obj;
 to->is_initialized = 1;

 return 0;
}
