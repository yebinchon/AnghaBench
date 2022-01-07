
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_bo {int dummy; } ;
struct drm_radeon_gem_get_tiling {int pitch; int tiling_flags; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*) ;
 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_get_tiling_flags (struct radeon_bo*,int *,int *) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 scalar_t__ unlikely (int) ;

int radeon_gem_get_tiling_ioctl(struct drm_device *dev, void *data,
    struct drm_file *filp)
{
 struct drm_radeon_gem_get_tiling *args = data;
 struct drm_gem_object *gobj;
 struct radeon_bo *rbo;
 int r = 0;

 DRM_DEBUG("\n");
 gobj = drm_gem_object_lookup(dev, filp, args->handle);
 if (gobj == ((void*)0))
  return -ENOENT;
 rbo = gem_to_radeon_bo(gobj);
 r = radeon_bo_reserve(rbo, 0);
 if (unlikely(r != 0))
  goto out;
 radeon_bo_get_tiling_flags(rbo, &args->tiling_flags, &args->pitch);
 radeon_bo_unreserve(rbo);
out:
 drm_gem_object_unreference_unlocked(gobj);
 return r;
}
