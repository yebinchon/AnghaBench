
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int pch_pf_pos; int pch_pf_size; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;






void
intel_pch_panel_fitting(struct drm_device *dev,
   int fitting_mode,
   const struct drm_display_mode *mode,
   struct drm_display_mode *adjusted_mode)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int x, y, width, height;

 x = y = width = height = 0;


 if (adjusted_mode->hdisplay == mode->hdisplay &&
     adjusted_mode->vdisplay == mode->vdisplay)
  goto done;

 switch (fitting_mode) {
 case 129:
  width = mode->hdisplay;
  height = mode->vdisplay;
  x = (adjusted_mode->hdisplay - width + 1)/2;
  y = (adjusted_mode->vdisplay - height + 1)/2;
  break;

 case 130:

  {
   u32 scaled_width = adjusted_mode->hdisplay * mode->vdisplay;
   u32 scaled_height = mode->hdisplay * adjusted_mode->vdisplay;
   if (scaled_width > scaled_height) {
    width = scaled_height / mode->vdisplay;
    if (width & 1)
     width++;
    x = (adjusted_mode->hdisplay - width + 1) / 2;
    y = 0;
    height = adjusted_mode->vdisplay;
   } else if (scaled_width < scaled_height) {
    height = scaled_width / mode->hdisplay;
    if (height & 1)
        height++;
    y = (adjusted_mode->vdisplay - height + 1) / 2;
    x = 0;
    width = adjusted_mode->hdisplay;
   } else {
    x = y = 0;
    width = adjusted_mode->hdisplay;
    height = adjusted_mode->vdisplay;
   }
  }
  break;

 default:
 case 128:
  x = y = 0;
  width = adjusted_mode->hdisplay;
  height = adjusted_mode->vdisplay;
  break;
 }

done:
 dev_priv->pch_pf_pos = (x << 16) | y;
 dev_priv->pch_pf_size = (width << 16) | height;
}
