
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int u32 ;
struct TYPE_4__ {int size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dev_private; } ;


 int EINVAL ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int drm_gem_handle_create (struct drm_file*,TYPE_1__*,int *) ;
 int drm_gem_object_release (TYPE_1__*) ;
 int drm_gem_object_unreference (TYPE_1__*) ;
 struct drm_i915_gem_object* i915_gem_alloc_object (struct drm_device*,scalar_t__) ;
 int i915_gem_info_remove_obj (int ,int ) ;
 int i915_gem_object_free (struct drm_i915_gem_object*) ;
 scalar_t__ roundup (scalar_t__,int ) ;
 int trace_i915_gem_object_create (struct drm_i915_gem_object*) ;

__attribute__((used)) static int
i915_gem_create(struct drm_file *file,
  struct drm_device *dev,
  uint64_t size,
  uint32_t *handle_p)
{
 struct drm_i915_gem_object *obj;
 int ret;
 u32 handle;

 size = roundup(size, PAGE_SIZE);
 if (size == 0)
  return -EINVAL;


 obj = i915_gem_alloc_object(dev, size);
 if (obj == ((void*)0))
  return -ENOMEM;

 ret = drm_gem_handle_create(file, &obj->base, &handle);
 if (ret) {
  drm_gem_object_release(&obj->base);
  i915_gem_info_remove_obj(dev->dev_private, obj->base.size);
  i915_gem_object_free(obj);
  return ret;
 }


 drm_gem_object_unreference(&obj->base);
 trace_i915_gem_object_create(obj);

 *handle_p = handle;
 return 0;
}
