
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_device {TYPE_1__* asic; } ;
struct radeon_bo {TYPE_3__* rdev; } ;
struct drm_radeon_gem_wait_idle {int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_6__ {TYPE_2__* asic; } ;
struct TYPE_5__ {int (* ioctl_wait_idle ) (struct radeon_device*,struct radeon_bo*) ;} ;
struct TYPE_4__ {scalar_t__ ioctl_wait_idle; } ;


 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_wait (struct radeon_bo*,int *,int) ;
 int radeon_gem_handle_lockup (struct radeon_device*,int) ;
 int stub1 (struct radeon_device*,struct radeon_bo*) ;

int radeon_gem_wait_idle_ioctl(struct drm_device *dev, void *data,
         struct drm_file *filp)
{
 struct radeon_device *rdev = dev->dev_private;
 struct drm_radeon_gem_wait_idle *args = data;
 struct drm_gem_object *gobj;
 struct radeon_bo *robj;
 int r;

 gobj = drm_gem_object_lookup(dev, filp, args->handle);
 if (gobj == ((void*)0)) {
  return -ENOENT;
 }
 robj = gem_to_radeon_bo(gobj);
 r = radeon_bo_wait(robj, ((void*)0), 0);

 if (rdev->asic->ioctl_wait_idle)
  robj->rdev->asic->ioctl_wait_idle(rdev, robj);
 drm_gem_object_unreference_unlocked(gobj);
 r = radeon_gem_handle_lockup(rdev, r);
 return r;
}
