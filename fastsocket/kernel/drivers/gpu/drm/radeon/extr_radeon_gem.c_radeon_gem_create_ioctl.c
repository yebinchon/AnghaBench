
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int exclusive_lock; } ;
struct drm_radeon_gem_create {int handle; int initial_domain; int alignment; int size; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int PAGE_SIZE ;
 int down_read (int *) ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 int radeon_gem_handle_lockup (struct radeon_device*,int) ;
 int radeon_gem_object_create (struct radeon_device*,int ,int ,int ,int,int,struct drm_gem_object**) ;
 int roundup (int ,int ) ;
 int up_read (int *) ;

int radeon_gem_create_ioctl(struct drm_device *dev, void *data,
       struct drm_file *filp)
{
 struct radeon_device *rdev = dev->dev_private;
 struct drm_radeon_gem_create *args = data;
 struct drm_gem_object *gobj;
 uint32_t handle;
 int r;

 down_read(&rdev->exclusive_lock);

 args->size = roundup(args->size, PAGE_SIZE);
 r = radeon_gem_object_create(rdev, args->size, args->alignment,
     args->initial_domain, 0,
     0, &gobj);
 if (r) {
  up_read(&rdev->exclusive_lock);
  r = radeon_gem_handle_lockup(rdev, r);
  return r;
 }
 r = drm_gem_handle_create(filp, gobj, &handle);

 drm_gem_object_unreference_unlocked(gobj);
 if (r) {
  up_read(&rdev->exclusive_lock);
  r = radeon_gem_handle_lockup(rdev, r);
  return r;
 }
 args->handle = handle;
 up_read(&rdev->exclusive_lock);
 return 0;
}
