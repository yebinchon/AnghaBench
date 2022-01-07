
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_plane {int can_scale; int max_downscale; int pipe; int base; int get_colorkey; int update_colorkey; int disable_plane; int update_plane; } ;
struct drm_device {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int gen; } ;


 int ARRAY_SIZE (int *) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int IS_GEN6 (struct drm_device*) ;
 int IS_HASWELL (struct drm_device*) ;
 int IS_VALLEYVIEW (struct drm_device*) ;
 int drm_plane_init (struct drm_device*,int *,unsigned long,int *,int const*,int,int) ;
 int ilk_disable_plane ;
 int ilk_get_colorkey ;
 int * ilk_plane_formats ;
 int ilk_update_colorkey ;
 int ilk_update_plane ;
 int intel_plane_funcs ;
 int ivb_disable_plane ;
 int ivb_get_colorkey ;
 int ivb_update_colorkey ;
 int ivb_update_plane ;
 int kfree (struct intel_plane*) ;
 struct intel_plane* kzalloc (int,int ) ;
 int * snb_plane_formats ;

int
intel_plane_init(struct drm_device *dev, enum pipe pipe)
{
 struct intel_plane *intel_plane;
 unsigned long possible_crtcs;
 const uint32_t *plane_formats;
 int num_plane_formats;
 int ret;

 if (INTEL_INFO(dev)->gen < 5)
  return -ENODEV;

 intel_plane = kzalloc(sizeof(struct intel_plane), GFP_KERNEL);
 if (!intel_plane)
  return -ENOMEM;

 switch (INTEL_INFO(dev)->gen) {
 case 5:
 case 6:
  intel_plane->can_scale = 1;
  intel_plane->max_downscale = 16;
  intel_plane->update_plane = ilk_update_plane;
  intel_plane->disable_plane = ilk_disable_plane;
  intel_plane->update_colorkey = ilk_update_colorkey;
  intel_plane->get_colorkey = ilk_get_colorkey;

  if (IS_GEN6(dev)) {
   plane_formats = snb_plane_formats;
   num_plane_formats = ARRAY_SIZE(snb_plane_formats);
  } else {
   plane_formats = ilk_plane_formats;
   num_plane_formats = ARRAY_SIZE(ilk_plane_formats);
  }
  break;

 case 7:
  if (IS_HASWELL(dev) || IS_VALLEYVIEW(dev))
   intel_plane->can_scale = 0;
  else
   intel_plane->can_scale = 1;
  intel_plane->max_downscale = 2;
  intel_plane->update_plane = ivb_update_plane;
  intel_plane->disable_plane = ivb_disable_plane;
  intel_plane->update_colorkey = ivb_update_colorkey;
  intel_plane->get_colorkey = ivb_get_colorkey;

  plane_formats = snb_plane_formats;
  num_plane_formats = ARRAY_SIZE(snb_plane_formats);
  break;

 default:
  kfree(intel_plane);
  return -ENODEV;
 }

 intel_plane->pipe = pipe;
 possible_crtcs = (1 << pipe);
 ret = drm_plane_init(dev, &intel_plane->base, possible_crtcs,
        &intel_plane_funcs,
        plane_formats, num_plane_formats,
        0);
 if (ret)
  kfree(intel_plane);

 return ret;
}
