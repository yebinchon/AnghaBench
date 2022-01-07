
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mm_node {int size; int start; } ;
struct TYPE_2__ {void* read_domains; void* write_domain; } ;
struct drm_i915_gem_object {int has_dma_mapping; int pages_pin_count; int cache_level; TYPE_1__ base; struct drm_mm_node* stolen; int * pages; } ;
struct drm_device {int dummy; } ;


 int I915_CACHE_NONE ;
 void* I915_GEM_DOMAIN_GTT ;
 scalar_t__ drm_gem_private_object_init (struct drm_device*,TYPE_1__*,int ) ;
 struct drm_i915_gem_object* i915_gem_object_alloc (struct drm_device*) ;
 int i915_gem_object_free (struct drm_i915_gem_object*) ;
 int i915_gem_object_init (struct drm_i915_gem_object*,int *) ;
 int i915_gem_object_stolen_ops ;
 int * i915_pages_create_for_stolen (struct drm_device*,int ,int ) ;

__attribute__((used)) static struct drm_i915_gem_object *
_i915_gem_object_create_stolen(struct drm_device *dev,
          struct drm_mm_node *stolen)
{
 struct drm_i915_gem_object *obj;

 obj = i915_gem_object_alloc(dev);
 if (obj == ((void*)0))
  return ((void*)0);

 if (drm_gem_private_object_init(dev, &obj->base, stolen->size))
  goto cleanup;

 i915_gem_object_init(obj, &i915_gem_object_stolen_ops);

 obj->pages = i915_pages_create_for_stolen(dev,
        stolen->start, stolen->size);
 if (obj->pages == ((void*)0))
  goto cleanup;

 obj->has_dma_mapping = 1;
 obj->pages_pin_count = 1;
 obj->stolen = stolen;

 obj->base.write_domain = I915_GEM_DOMAIN_GTT;
 obj->base.read_domains = I915_GEM_DOMAIN_GTT;
 obj->cache_level = I915_CACHE_NONE;

 return obj;

cleanup:
 i915_gem_object_free(obj);
 return ((void*)0);
}
