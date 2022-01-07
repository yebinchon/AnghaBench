
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_create {int handle; int size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int i915_gem_create (struct drm_file*,struct drm_device*,int ,int *) ;

int
i915_gem_create_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file)
{
 struct drm_i915_gem_create *args = data;

 return i915_gem_create(file, dev,
          args->size, &args->handle);
}
