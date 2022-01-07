
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_control {struct drm_i915_gem_object* obj; int gtt_offset; int * cpu_page; } ;
struct intel_ring_buffer {struct pipe_control* private; int name; int dev; } ;
struct drm_i915_gem_object {int base; TYPE_1__* pages; int gtt_offset; } ;
struct TYPE_2__ {int sgl; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ) ;
 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I915_CACHE_LLC ;
 int drm_gem_object_unreference (int *) ;
 struct drm_i915_gem_object* i915_gem_alloc_object (int ,int) ;
 int i915_gem_object_pin (struct drm_i915_gem_object*,int,int,int) ;
 int i915_gem_object_set_cache_level (struct drm_i915_gem_object*,int ) ;
 int i915_gem_object_unpin (struct drm_i915_gem_object*) ;
 int kfree (struct pipe_control*) ;
 struct pipe_control* kmalloc (int,int ) ;
 int * kmap (int ) ;
 int sg_page (int ) ;

__attribute__((used)) static int
init_pipe_control(struct intel_ring_buffer *ring)
{
 struct pipe_control *pc;
 struct drm_i915_gem_object *obj;
 int ret;

 if (ring->private)
  return 0;

 pc = kmalloc(sizeof(*pc), GFP_KERNEL);
 if (!pc)
  return -ENOMEM;

 obj = i915_gem_alloc_object(ring->dev, 4096);
 if (obj == ((void*)0)) {
  DRM_ERROR("Failed to allocate seqno page\n");
  ret = -ENOMEM;
  goto err;
 }

 i915_gem_object_set_cache_level(obj, I915_CACHE_LLC);

 ret = i915_gem_object_pin(obj, 4096, 1, 0);
 if (ret)
  goto err_unref;

 pc->gtt_offset = obj->gtt_offset;
 pc->cpu_page = kmap(sg_page(obj->pages->sgl));
 if (pc->cpu_page == ((void*)0))
  goto err_unpin;

 DRM_DEBUG_DRIVER("%s pipe control offset: 0x%08x\n",
    ring->name, pc->gtt_offset);

 pc->obj = obj;
 ring->private = pc;
 return 0;

err_unpin:
 i915_gem_object_unpin(obj);
err_unref:
 drm_gem_object_unreference(&obj->base);
err:
 kfree(pc);
 return ret;
}
