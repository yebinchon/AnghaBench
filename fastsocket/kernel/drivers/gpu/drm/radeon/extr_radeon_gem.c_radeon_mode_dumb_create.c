
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;
struct drm_mode_create_dumb {int pitch; int bpp; int size; int height; int handle; int width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int ALIGN (int,int ) ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_VRAM ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 int radeon_align_pitch (struct radeon_device*,int ,int,int ) ;
 int radeon_gem_object_create (struct radeon_device*,int,int ,int ,int,int ,struct drm_gem_object**) ;
 int ttm_bo_type_device ;

int radeon_mode_dumb_create(struct drm_file *file_priv,
       struct drm_device *dev,
       struct drm_mode_create_dumb *args)
{
 struct radeon_device *rdev = dev->dev_private;
 struct drm_gem_object *gobj;
 uint32_t handle;
 int r;

 args->pitch = radeon_align_pitch(rdev, args->width, args->bpp, 0) * ((args->bpp + 1) / 8);
 args->size = args->pitch * args->height;
 args->size = ALIGN(args->size, PAGE_SIZE);

 r = radeon_gem_object_create(rdev, args->size, 0,
         RADEON_GEM_DOMAIN_VRAM,
         0, ttm_bo_type_device,
         &gobj);
 if (r)
  return -ENOMEM;

 r = drm_gem_handle_create(file_priv, gobj, &handle);

 drm_gem_object_unreference_unlocked(gobj);
 if (r) {
  return r;
 }
 args->handle = handle;
 return 0;
}
