
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct drm_mm_node {int start; int size; } ;
struct TYPE_6__ {int size; struct drm_device* dev; } ;
struct drm_i915_gem_object {int gtt_offset; int map_and_fenceable; TYPE_2__ base; struct drm_mm_node* gtt_space; int mm_list; int gtt_list; int cache_level; int tiling_mode; } ;
struct drm_device {TYPE_4__* dev_private; } ;
struct TYPE_7__ {scalar_t__ mappable_end; scalar_t__ total; } ;
struct TYPE_5__ {int inactive_list; int bound_list; int gtt_space; } ;
struct TYPE_8__ {TYPE_3__ gtt; TYPE_1__ mm; } ;
typedef TYPE_4__ drm_i915_private_t ;


 int DRM_ERROR (char*,...) ;
 int E2BIG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int drm_mm_insert_node_generic (int *,struct drm_mm_node*,int,unsigned int,int ) ;
 int drm_mm_insert_node_in_range_generic (int *,struct drm_mm_node*,int,unsigned int,int ,int ,scalar_t__) ;
 int drm_mm_put_block (struct drm_mm_node*) ;
 int i915_gem_evict_something (struct drm_device*,int,unsigned int,int ,int,int) ;
 int i915_gem_get_gtt_alignment (struct drm_device*,int,int ,int) ;
 int i915_gem_get_gtt_size (struct drm_device*,int,int ) ;
 int i915_gem_gtt_prepare_object (struct drm_i915_gem_object*) ;
 int i915_gem_object_get_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_valid_gtt_space (struct drm_device*,struct drm_mm_node*,int ) ;
 int i915_gem_verify_gtt (struct drm_device*) ;
 int kfree (struct drm_mm_node*) ;
 struct drm_mm_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_move_tail (int *,int *) ;
 int trace_i915_gem_object_bind (struct drm_i915_gem_object*,int) ;

__attribute__((used)) static int
i915_gem_object_bind_to_gtt(struct drm_i915_gem_object *obj,
       unsigned alignment,
       bool map_and_fenceable,
       bool nonblocking)
{
 struct drm_device *dev = obj->base.dev;
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct drm_mm_node *node;
 u32 size, fence_size, fence_alignment, unfenced_alignment;
 bool mappable, fenceable;
 int ret;

 fence_size = i915_gem_get_gtt_size(dev,
        obj->base.size,
        obj->tiling_mode);
 fence_alignment = i915_gem_get_gtt_alignment(dev,
           obj->base.size,
           obj->tiling_mode, 1);
 unfenced_alignment =
  i915_gem_get_gtt_alignment(dev,
          obj->base.size,
          obj->tiling_mode, 0);

 if (alignment == 0)
  alignment = map_and_fenceable ? fence_alignment :
      unfenced_alignment;
 if (map_and_fenceable && alignment & (fence_alignment - 1)) {
  DRM_ERROR("Invalid object alignment requested %u\n", alignment);
  return -EINVAL;
 }

 size = map_and_fenceable ? fence_size : obj->base.size;




 if (obj->base.size >
     (map_and_fenceable ? dev_priv->gtt.mappable_end : dev_priv->gtt.total)) {
  DRM_ERROR("Attempting to bind an object larger than the aperture\n");
  return -E2BIG;
 }

 ret = i915_gem_object_get_pages(obj);
 if (ret)
  return ret;

 i915_gem_object_pin_pages(obj);

 node = kzalloc(sizeof(*node), GFP_KERNEL);
 if (node == ((void*)0)) {
  i915_gem_object_unpin_pages(obj);
  return -ENOMEM;
 }

 search_free:
 if (map_and_fenceable)
  ret = drm_mm_insert_node_in_range_generic(&dev_priv->mm.gtt_space, node,
         size, alignment, obj->cache_level,
         0, dev_priv->gtt.mappable_end);
 else
  ret = drm_mm_insert_node_generic(&dev_priv->mm.gtt_space, node,
       size, alignment, obj->cache_level);
 if (ret) {
  ret = i915_gem_evict_something(dev, size, alignment,
            obj->cache_level,
            map_and_fenceable,
            nonblocking);
  if (ret == 0)
   goto search_free;

  i915_gem_object_unpin_pages(obj);
  kfree(node);
  return ret;
 }
 if (WARN_ON(!i915_gem_valid_gtt_space(dev, node, obj->cache_level))) {
  i915_gem_object_unpin_pages(obj);
  drm_mm_put_block(node);
  return -EINVAL;
 }

 ret = i915_gem_gtt_prepare_object(obj);
 if (ret) {
  i915_gem_object_unpin_pages(obj);
  drm_mm_put_block(node);
  return ret;
 }

 list_move_tail(&obj->gtt_list, &dev_priv->mm.bound_list);
 list_add_tail(&obj->mm_list, &dev_priv->mm.inactive_list);

 obj->gtt_space = node;
 obj->gtt_offset = node->start;

 fenceable =
  node->size == fence_size &&
  (node->start & (fence_alignment - 1)) == 0;

 mappable =
  obj->gtt_offset + obj->base.size <= dev_priv->gtt.mappable_end;

 obj->map_and_fenceable = mappable && fenceable;

 i915_gem_object_unpin_pages(obj);
 trace_i915_gem_object_bind(obj, map_and_fenceable);
 i915_gem_verify_gtt(dev);
 return 0;
}
