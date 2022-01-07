
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int audio_enabled; } ;


 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 int DRM_INFO (char*,char*) ;
 int EVERGREEN_AUDIO_ENABLE ;
 int R600_AUDIO_ENABLE ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int,int) ;

__attribute__((used)) static void r600_audio_engine_enable(struct radeon_device *rdev, bool enable)
{
 u32 value = 0;
 DRM_INFO("%s audio support\n", enable ? "Enabling" : "Disabling");
 if (ASIC_IS_DCE4(rdev)) {
  if (enable) {
   value |= 0x81000000;
   value |= 0x0e1000f0;
  }
  WREG32(EVERGREEN_AUDIO_ENABLE, value);
 } else {
  WREG32_P(R600_AUDIO_ENABLE,
    enable ? 0x81000000 : 0x0, ~0x81000000);
 }
 rdev->audio_enabled = enable;
}
