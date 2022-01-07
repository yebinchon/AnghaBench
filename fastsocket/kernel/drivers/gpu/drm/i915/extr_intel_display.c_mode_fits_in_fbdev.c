
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_i915_private {TYPE_2__* fbdev; } ;
struct TYPE_6__ {int size; } ;
struct drm_i915_gem_object {TYPE_3__ base; } ;
struct drm_framebuffer {int* pitches; int bits_per_pixel; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {struct drm_framebuffer base; struct drm_i915_gem_object* obj; } ;
struct TYPE_5__ {TYPE_1__ ifb; } ;


 int intel_framebuffer_pitch_for_width (int ,int ) ;

__attribute__((used)) static struct drm_framebuffer *
mode_fits_in_fbdev(struct drm_device *dev,
     struct drm_display_mode *mode)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_i915_gem_object *obj;
 struct drm_framebuffer *fb;

 if (dev_priv->fbdev == ((void*)0))
  return ((void*)0);

 obj = dev_priv->fbdev->ifb.obj;
 if (obj == ((void*)0))
  return ((void*)0);

 fb = &dev_priv->fbdev->ifb.base;
 if (fb->pitches[0] < intel_framebuffer_pitch_for_width(mode->hdisplay,
              fb->bits_per_pixel))
  return ((void*)0);

 if (obj->base.size < mode->vdisplay * fb->pitches[0])
  return ((void*)0);

 return fb;
}
