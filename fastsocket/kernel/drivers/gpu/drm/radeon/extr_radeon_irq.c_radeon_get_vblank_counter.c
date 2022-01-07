
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int CHIP_RS600 ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int R500_D1CRTC_FRAME_COUNT ;
 int R500_D2CRTC_FRAME_COUNT ;
 int RADEON_CRTC2_CRNT_FRAME ;
 int RADEON_CRTC_CRNT_FRAME ;
 int RADEON_FAMILY_MASK ;
 int RADEON_READ (int ) ;

u32 radeon_get_vblank_counter(struct drm_device *dev, int crtc)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 if (crtc < 0 || crtc > 1) {
  DRM_ERROR("Invalid crtc %d\n", crtc);
  return -EINVAL;
 }

 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RS600) {
  if (crtc == 0)
   return RADEON_READ(R500_D1CRTC_FRAME_COUNT);
  else
   return RADEON_READ(R500_D2CRTC_FRAME_COUNT);
 } else {
  if (crtc == 0)
   return RADEON_READ(RADEON_CRTC_CRNT_FRAME);
  else
   return RADEON_READ(RADEON_CRTC2_CRNT_FRAME);
 }
}
