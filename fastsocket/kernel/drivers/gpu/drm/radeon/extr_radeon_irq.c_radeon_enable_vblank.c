
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int CHIP_RS600 ;
 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int R500_D1MODE_INT_MASK ;
 int R500_D2MODE_INT_MASK ;
 int RADEON_CRTC2_VBLANK_MASK ;
 int RADEON_CRTC_VBLANK_MASK ;
 int RADEON_FAMILY_MASK ;
 int r500_vbl_irq_set_state (struct drm_device*,int ,int) ;
 int radeon_irq_set_state (struct drm_device*,int ,int) ;

int radeon_enable_vblank(struct drm_device *dev, int crtc)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;

 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RS600) {
  switch (crtc) {
  case 0:
   r500_vbl_irq_set_state(dev, R500_D1MODE_INT_MASK, 1);
   break;
  case 1:
   r500_vbl_irq_set_state(dev, R500_D2MODE_INT_MASK, 1);
   break;
  default:
   DRM_ERROR("tried to enable vblank on non-existent crtc %d\n",
      crtc);
   return -EINVAL;
  }
 } else {
  switch (crtc) {
  case 0:
   radeon_irq_set_state(dev, RADEON_CRTC_VBLANK_MASK, 1);
   break;
  case 1:
   radeon_irq_set_state(dev, RADEON_CRTC2_VBLANK_MASK, 1);
   break;
  default:
   DRM_ERROR("tried to enable vblank on non-existent crtc %d\n",
      crtc);
   return -EINVAL;
  }
 }

 return 0;
}
