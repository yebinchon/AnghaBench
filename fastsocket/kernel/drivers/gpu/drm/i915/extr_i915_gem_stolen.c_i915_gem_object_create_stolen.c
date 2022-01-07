
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_mm_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ stolen_base; int stolen; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 struct drm_i915_gem_object* _i915_gem_object_create_stolen (struct drm_device*,struct drm_mm_node*) ;
 struct drm_mm_node* drm_mm_get_block (struct drm_mm_node*,int ,int) ;
 int drm_mm_put_block (struct drm_mm_node*) ;
 struct drm_mm_node* drm_mm_search_free (int *,int ,int,int ) ;

struct drm_i915_gem_object *
i915_gem_object_create_stolen(struct drm_device *dev, u32 size)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_i915_gem_object *obj;
 struct drm_mm_node *stolen;

 if (dev_priv->mm.stolen_base == 0)
  return ((void*)0);

 DRM_DEBUG_KMS("creating stolen object: size=%x\n", size);
 if (size == 0)
  return ((void*)0);

 stolen = drm_mm_search_free(&dev_priv->mm.stolen, size, 4096, 0);
 if (stolen)
  stolen = drm_mm_get_block(stolen, size, 4096);
 if (stolen == ((void*)0))
  return ((void*)0);

 obj = _i915_gem_object_create_stolen(dev, stolen);
 if (obj)
  return obj;

 drm_mm_put_block(stolen);
 return ((void*)0);
}
