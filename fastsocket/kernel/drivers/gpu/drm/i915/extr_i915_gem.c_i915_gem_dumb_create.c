
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_create_dumb {int pitch; int width; int bpp; int size; int height; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ALIGN (int,int) ;
 int i915_gem_create (struct drm_file*,struct drm_device*,int,int *) ;

int
i915_gem_dumb_create(struct drm_file *file,
       struct drm_device *dev,
       struct drm_mode_create_dumb *args)
{

 args->pitch = ALIGN(args->width * ((args->bpp + 7) / 8), 64);
 args->size = args->pitch * args->height;
 return i915_gem_create(file, dev,
          args->size, &args->handle);
}
