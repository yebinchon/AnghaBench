
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* update_sprite_wm ) (struct drm_device*,int,int ,int) ;} ;
struct drm_i915_private {TYPE_1__ display; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int stub1 (struct drm_device*,int,int ,int) ;

void intel_update_sprite_watermarks(struct drm_device *dev, int pipe,
        uint32_t sprite_width, int pixel_size)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (dev_priv->display.update_sprite_wm)
  dev_priv->display.update_sprite_wm(dev, pipe, sprite_width,
         pixel_size);
}
