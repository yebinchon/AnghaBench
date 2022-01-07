
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_domains; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 int I915_GEM_GPU_DOMAINS ;
 int i915_gem_object_wait_rendering (struct drm_i915_gem_object*,int) ;

int
i915_gem_object_finish_gpu(struct drm_i915_gem_object *obj)
{
 int ret;

 if ((obj->base.read_domains & I915_GEM_GPU_DOMAINS) == 0)
  return 0;

 ret = i915_gem_object_wait_rendering(obj, 0);
 if (ret)
  return ret;


 obj->base.read_domains &= ~I915_GEM_GPU_DOMAINS;
 return 0;
}
