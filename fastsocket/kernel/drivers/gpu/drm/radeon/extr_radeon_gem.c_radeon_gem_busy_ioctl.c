
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;
struct radeon_bo {int dummy; } ;
struct drm_radeon_gem_busy {int domain; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int ENOENT ;
 int RADEON_GEM_DOMAIN_CPU ;
 int RADEON_GEM_DOMAIN_GTT ;
 int RADEON_GEM_DOMAIN_VRAM ;



 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_wait (struct radeon_bo*,int*,int) ;
 int radeon_gem_handle_lockup (struct radeon_device*,int) ;

int radeon_gem_busy_ioctl(struct drm_device *dev, void *data,
     struct drm_file *filp)
{
 struct radeon_device *rdev = dev->dev_private;
 struct drm_radeon_gem_busy *args = data;
 struct drm_gem_object *gobj;
 struct radeon_bo *robj;
 int r;
 uint32_t cur_placement = 0;

 gobj = drm_gem_object_lookup(dev, filp, args->handle);
 if (gobj == ((void*)0)) {
  return -ENOENT;
 }
 robj = gem_to_radeon_bo(gobj);
 r = radeon_bo_wait(robj, &cur_placement, 1);
 switch (cur_placement) {
 case 128:
  args->domain = RADEON_GEM_DOMAIN_VRAM;
  break;
 case 129:
  args->domain = RADEON_GEM_DOMAIN_GTT;
  break;
 case 130:
  args->domain = RADEON_GEM_DOMAIN_CPU;
 default:
  break;
 }
 drm_gem_object_unreference_unlocked(gobj);
 r = radeon_gem_handle_lockup(rdev, r);
 return r;
}
