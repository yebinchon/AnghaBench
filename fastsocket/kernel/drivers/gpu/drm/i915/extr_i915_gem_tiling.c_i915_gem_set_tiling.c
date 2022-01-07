
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct drm_i915_gem_set_tiling {scalar_t__ stride; scalar_t__ tiling_mode; scalar_t__ swizzle_mode; int handle; } ;
struct TYPE_9__ {scalar_t__ size; } ;
struct drm_i915_gem_object {scalar_t__ tiling_mode; scalar_t__ stride; int map_and_fenceable; scalar_t__ gtt_offset; int fence_dirty; scalar_t__ fence_reg; TYPE_4__ base; int * bit_17; scalar_t__ fenced_gpu_access; int * gtt_space; scalar_t__ pin_count; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; TYPE_3__* dev_private; } ;
struct TYPE_7__ {scalar_t__ mappable_end; } ;
struct TYPE_6__ {scalar_t__ bit_6_swizzle_x; scalar_t__ bit_6_swizzle_y; } ;
struct TYPE_8__ {TYPE_2__ gtt; TYPE_1__ mm; } ;
typedef TYPE_3__ drm_i915_private_t ;


 int BITS_TO_LONGS (int) ;
 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int GFP_KERNEL ;
 scalar_t__ I915_BIT_6_SWIZZLE_9 ;
 scalar_t__ I915_BIT_6_SWIZZLE_9_10 ;
 scalar_t__ I915_BIT_6_SWIZZLE_9_10_17 ;
 scalar_t__ I915_BIT_6_SWIZZLE_9_17 ;
 void* I915_BIT_6_SWIZZLE_NONE ;
 scalar_t__ I915_BIT_6_SWIZZLE_UNKNOWN ;
 scalar_t__ I915_FENCE_REG_NONE ;
 scalar_t__ I915_TILING_NONE ;
 scalar_t__ I915_TILING_X ;
 int PAGE_SHIFT ;
 int drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference (TYPE_4__*) ;
 int drm_gem_object_unreference_unlocked (TYPE_4__*) ;
 int i915_gem_get_gtt_alignment (struct drm_device*,scalar_t__,scalar_t__,int) ;
 scalar_t__ i915_gem_object_fence_ok (struct drm_i915_gem_object*,scalar_t__) ;
 scalar_t__ i915_gem_object_needs_bit17_swizzle (struct drm_i915_gem_object*) ;
 int i915_gem_object_unbind (struct drm_i915_gem_object*) ;
 int i915_gem_release_mmap (struct drm_i915_gem_object*) ;
 int i915_tiling_ok (struct drm_device*,scalar_t__,scalar_t__,scalar_t__) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_gem_object* to_intel_bo (int ) ;

int
i915_gem_set_tiling(struct drm_device *dev, void *data,
     struct drm_file *file)
{
 struct drm_i915_gem_set_tiling *args = data;
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct drm_i915_gem_object *obj;
 int ret = 0;

 obj = to_intel_bo(drm_gem_object_lookup(dev, file, args->handle));
 if (&obj->base == ((void*)0))
  return -ENOENT;

 if (!i915_tiling_ok(dev,
       args->stride, obj->base.size, args->tiling_mode)) {
  drm_gem_object_unreference_unlocked(&obj->base);
  return -EINVAL;
 }

 if (obj->pin_count) {
  drm_gem_object_unreference_unlocked(&obj->base);
  return -EBUSY;
 }

 if (args->tiling_mode == I915_TILING_NONE) {
  args->swizzle_mode = I915_BIT_6_SWIZZLE_NONE;
  args->stride = 0;
 } else {
  if (args->tiling_mode == I915_TILING_X)
   args->swizzle_mode = dev_priv->mm.bit_6_swizzle_x;
  else
   args->swizzle_mode = dev_priv->mm.bit_6_swizzle_y;
  if (args->swizzle_mode == I915_BIT_6_SWIZZLE_9_17)
   args->swizzle_mode = I915_BIT_6_SWIZZLE_9;
  if (args->swizzle_mode == I915_BIT_6_SWIZZLE_9_10_17)
   args->swizzle_mode = I915_BIT_6_SWIZZLE_9_10;


  if (args->swizzle_mode == I915_BIT_6_SWIZZLE_UNKNOWN) {
   args->tiling_mode = I915_TILING_NONE;
   args->swizzle_mode = I915_BIT_6_SWIZZLE_NONE;
   args->stride = 0;
  }
 }

 mutex_lock(&dev->struct_mutex);
 if (args->tiling_mode != obj->tiling_mode ||
     args->stride != obj->stride) {
  obj->map_and_fenceable =
   obj->gtt_space == ((void*)0) ||
   (obj->gtt_offset + obj->base.size <= dev_priv->gtt.mappable_end &&
    i915_gem_object_fence_ok(obj, args->tiling_mode));


  if (!obj->map_and_fenceable) {
   u32 unfenced_alignment =
    i915_gem_get_gtt_alignment(dev, obj->base.size,
           args->tiling_mode,
           0);
   if (obj->gtt_offset & (unfenced_alignment - 1))
    ret = i915_gem_object_unbind(obj);
  }

  if (ret == 0) {
   obj->fence_dirty =
    obj->fenced_gpu_access ||
    obj->fence_reg != I915_FENCE_REG_NONE;

   obj->tiling_mode = args->tiling_mode;
   obj->stride = args->stride;


   i915_gem_release_mmap(obj);
  }
 }

 args->stride = obj->stride;
 args->tiling_mode = obj->tiling_mode;


 if (i915_gem_object_needs_bit17_swizzle(obj)) {
  if (obj->bit_17 == ((void*)0)) {
   obj->bit_17 = kmalloc(BITS_TO_LONGS(obj->base.size >> PAGE_SHIFT) *
           sizeof(long), GFP_KERNEL);
  }
 } else {
  kfree(obj->bit_17);
  obj->bit_17 = ((void*)0);
 }

 drm_gem_object_unreference(&obj->base);
 mutex_unlock(&dev->struct_mutex);

 return ret;
}
