
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_gem_handle_delete (struct drm_file*,int ) ;

int i915_gem_dumb_destroy(struct drm_file *file,
     struct drm_device *dev,
     uint32_t handle)
{
 return drm_gem_handle_delete(file, handle);
}
