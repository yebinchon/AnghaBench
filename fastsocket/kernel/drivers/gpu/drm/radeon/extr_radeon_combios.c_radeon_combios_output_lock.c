
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int RADEON_BIOS_6_SCRATCH ;
 int RADEON_DRIVER_CRITICAL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

void radeon_combios_output_lock(struct drm_encoder *encoder, bool lock)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 uint32_t bios_6_scratch;

 bios_6_scratch = RREG32(RADEON_BIOS_6_SCRATCH);

 if (lock)
  bios_6_scratch |= RADEON_DRIVER_CRITICAL;
 else
  bios_6_scratch &= ~RADEON_DRIVER_CRITICAL;

 WREG32(RADEON_BIOS_6_SCRATCH, bios_6_scratch);
}
