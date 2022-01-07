
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int gfx_addr; int * page_addr; struct drm_i915_gem_object* obj; } ;
struct intel_ring_buffer {TYPE_2__ status_page; int name; struct drm_device* dev; } ;
struct drm_i915_gem_object {int base; TYPE_1__* pages; int gtt_offset; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int sgl; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ) ;
 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int I915_CACHE_LLC ;
 int PAGE_SIZE ;
 int drm_gem_object_unreference (int *) ;
 struct drm_i915_gem_object* i915_gem_alloc_object (struct drm_device*,int) ;
 int i915_gem_object_pin (struct drm_i915_gem_object*,int,int,int) ;
 int i915_gem_object_set_cache_level (struct drm_i915_gem_object*,int ) ;
 int i915_gem_object_unpin (struct drm_i915_gem_object*) ;
 int intel_ring_setup_status_page (struct intel_ring_buffer*) ;
 int * kmap (int ) ;
 int memset (int *,int ,int ) ;
 int sg_page (int ) ;

__attribute__((used)) static int init_status_page(struct intel_ring_buffer *ring)
{
 struct drm_device *dev = ring->dev;
 struct drm_i915_gem_object *obj;
 int ret;

 obj = i915_gem_alloc_object(dev, 4096);
 if (obj == ((void*)0)) {
  DRM_ERROR("Failed to allocate status page\n");
  ret = -ENOMEM;
  goto err;
 }

 i915_gem_object_set_cache_level(obj, I915_CACHE_LLC);

 ret = i915_gem_object_pin(obj, 4096, 1, 0);
 if (ret != 0) {
  goto err_unref;
 }

 ring->status_page.gfx_addr = obj->gtt_offset;
 ring->status_page.page_addr = kmap(sg_page(obj->pages->sgl));
 if (ring->status_page.page_addr == ((void*)0)) {
  ret = -ENOMEM;
  goto err_unpin;
 }
 ring->status_page.obj = obj;
 memset(ring->status_page.page_addr, 0, PAGE_SIZE);

 intel_ring_setup_status_page(ring);
 DRM_DEBUG_DRIVER("%s hws offset: 0x%08x\n",
   ring->name, ring->status_page.gfx_addr);

 return 0;

err_unpin:
 i915_gem_object_unpin(obj);
err_unref:
 drm_gem_object_unreference(&obj->base);
err:
 return ret;
}
