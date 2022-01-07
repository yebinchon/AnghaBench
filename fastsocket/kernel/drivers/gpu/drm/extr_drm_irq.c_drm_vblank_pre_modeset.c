
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int* vblank_inmodeset; int num_crtcs; } ;


 scalar_t__ drm_vblank_get (struct drm_device*,int) ;

void drm_vblank_pre_modeset(struct drm_device *dev, int crtc)
{

 if (!dev->num_crtcs)
  return;







 if (!dev->vblank_inmodeset[crtc]) {
  dev->vblank_inmodeset[crtc] = 0x1;
  if (drm_vblank_get(dev, crtc) == 0)
   dev->vblank_inmodeset[crtc] |= 0x2;
 }
}
