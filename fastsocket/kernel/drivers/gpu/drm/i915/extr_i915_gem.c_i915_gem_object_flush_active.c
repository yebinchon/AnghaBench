
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int ring; int last_read_seqno; scalar_t__ active; } ;


 int i915_gem_check_olr (int ,int ) ;
 int i915_gem_retire_requests_ring (int ) ;

__attribute__((used)) static int
i915_gem_object_flush_active(struct drm_i915_gem_object *obj)
{
 int ret;

 if (obj->active) {
  ret = i915_gem_check_olr(obj->ring, obj->last_read_seqno);
  if (ret)
   return ret;

  i915_gem_retire_requests_ring(obj->ring);
 }

 return 0;
}
