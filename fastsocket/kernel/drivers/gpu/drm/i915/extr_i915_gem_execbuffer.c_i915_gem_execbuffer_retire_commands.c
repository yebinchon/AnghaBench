
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {int gpu_caches_dirty; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int i915_add_request (struct intel_ring_buffer*,struct drm_file*,int *) ;

__attribute__((used)) static void
i915_gem_execbuffer_retire_commands(struct drm_device *dev,
        struct drm_file *file,
        struct intel_ring_buffer *ring)
{

 ring->gpu_caches_dirty = 1;


 (void)i915_add_request(ring, file, ((void*)0));
}
