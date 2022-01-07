
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_mmap_offset (struct radeon_bo*) ;

int radeon_mode_dumb_mmap(struct drm_file *filp,
     struct drm_device *dev,
     uint32_t handle, uint64_t *offset_p)
{
 struct drm_gem_object *gobj;
 struct radeon_bo *robj;

 gobj = drm_gem_object_lookup(dev, filp, handle);
 if (gobj == ((void*)0)) {
  return -ENOENT;
 }
 robj = gem_to_radeon_bo(gobj);
 *offset_p = radeon_bo_mmap_offset(robj);
 drm_gem_object_unreference_unlocked(gobj);
 return 0;
}
