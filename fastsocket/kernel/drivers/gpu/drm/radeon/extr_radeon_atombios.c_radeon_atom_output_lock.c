
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {scalar_t__ family; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int ATOM_S6_ACC_MODE ;
 int ATOM_S6_CRITICAL_STATE ;
 scalar_t__ CHIP_R600 ;
 int R600_BIOS_6_SCRATCH ;
 int RADEON_BIOS_6_SCRATCH ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

void radeon_atom_output_lock(struct drm_encoder *encoder, bool lock)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 uint32_t bios_6_scratch;

 if (rdev->family >= CHIP_R600)
  bios_6_scratch = RREG32(R600_BIOS_6_SCRATCH);
 else
  bios_6_scratch = RREG32(RADEON_BIOS_6_SCRATCH);

 if (lock) {
  bios_6_scratch |= ATOM_S6_CRITICAL_STATE;
  bios_6_scratch &= ~ATOM_S6_ACC_MODE;
 } else {
  bios_6_scratch &= ~ATOM_S6_CRITICAL_STATE;
  bios_6_scratch |= ATOM_S6_ACC_MODE;
 }

 if (rdev->family >= CHIP_R600)
  WREG32(R600_BIOS_6_SCRATCH, bios_6_scratch);
 else
  WREG32(RADEON_BIOS_6_SCRATCH, bios_6_scratch);
}
