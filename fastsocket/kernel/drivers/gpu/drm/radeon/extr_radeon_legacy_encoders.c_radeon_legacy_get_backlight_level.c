
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int RADEON_LVDS_BL_MOD_LEVEL_SHIFT ;
 int RADEON_LVDS_GEN_CNTL ;
 int RREG32 (int ) ;

u8
radeon_legacy_get_backlight_level(struct radeon_encoder *radeon_encoder)
{
 struct drm_device *dev = radeon_encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 u8 backlight_level;

 backlight_level = (RREG32(RADEON_LVDS_GEN_CNTL) >>
      RADEON_LVDS_BL_MOD_LEVEL_SHIFT) & 0xff;

 return backlight_level;
}
