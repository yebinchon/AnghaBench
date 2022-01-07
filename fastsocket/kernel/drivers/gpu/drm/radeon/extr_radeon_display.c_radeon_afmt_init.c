
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** afmt; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ mode_info; } ;
struct radeon_afmt {int dummy; } ;
struct TYPE_3__ {int id; int offset; } ;


 scalar_t__ ASIC_IS_DCE2 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE3 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 int ASIC_IS_DCE41 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 scalar_t__ CHIP_R600 ;
 int DCE2_HDMI_OFFSET0 ;
 int DCE2_HDMI_OFFSET1 ;
 int DCE3_HDMI_OFFSET0 ;
 int DCE3_HDMI_OFFSET1 ;
 int EVERGREEN_CRTC0_REGISTER_OFFSET ;
 int EVERGREEN_CRTC1_REGISTER_OFFSET ;
 int EVERGREEN_CRTC2_REGISTER_OFFSET ;
 int EVERGREEN_CRTC3_REGISTER_OFFSET ;
 int EVERGREEN_CRTC4_REGISTER_OFFSET ;
 int EVERGREEN_CRTC5_REGISTER_OFFSET ;
 int GFP_KERNEL ;
 int RADEON_MAX_AFMT_BLOCKS ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static void radeon_afmt_init(struct radeon_device *rdev)
{
 int i;

 for (i = 0; i < RADEON_MAX_AFMT_BLOCKS; i++)
  rdev->mode_info.afmt[i] = ((void*)0);

 if (ASIC_IS_DCE6(rdev)) {

 } else if (ASIC_IS_DCE4(rdev)) {


  rdev->mode_info.afmt[0] = kzalloc(sizeof(struct radeon_afmt), GFP_KERNEL);
  if (rdev->mode_info.afmt[0]) {
   rdev->mode_info.afmt[0]->offset = EVERGREEN_CRTC0_REGISTER_OFFSET;
   rdev->mode_info.afmt[0]->id = 0;
  }
  rdev->mode_info.afmt[1] = kzalloc(sizeof(struct radeon_afmt), GFP_KERNEL);
  if (rdev->mode_info.afmt[1]) {
   rdev->mode_info.afmt[1]->offset = EVERGREEN_CRTC1_REGISTER_OFFSET;
   rdev->mode_info.afmt[1]->id = 1;
  }
  if (!ASIC_IS_DCE41(rdev)) {
   rdev->mode_info.afmt[2] = kzalloc(sizeof(struct radeon_afmt), GFP_KERNEL);
   if (rdev->mode_info.afmt[2]) {
    rdev->mode_info.afmt[2]->offset = EVERGREEN_CRTC2_REGISTER_OFFSET;
    rdev->mode_info.afmt[2]->id = 2;
   }
   rdev->mode_info.afmt[3] = kzalloc(sizeof(struct radeon_afmt), GFP_KERNEL);
   if (rdev->mode_info.afmt[3]) {
    rdev->mode_info.afmt[3]->offset = EVERGREEN_CRTC3_REGISTER_OFFSET;
    rdev->mode_info.afmt[3]->id = 3;
   }
   rdev->mode_info.afmt[4] = kzalloc(sizeof(struct radeon_afmt), GFP_KERNEL);
   if (rdev->mode_info.afmt[4]) {
    rdev->mode_info.afmt[4]->offset = EVERGREEN_CRTC4_REGISTER_OFFSET;
    rdev->mode_info.afmt[4]->id = 4;
   }
   rdev->mode_info.afmt[5] = kzalloc(sizeof(struct radeon_afmt), GFP_KERNEL);
   if (rdev->mode_info.afmt[5]) {
    rdev->mode_info.afmt[5]->offset = EVERGREEN_CRTC5_REGISTER_OFFSET;
    rdev->mode_info.afmt[5]->id = 5;
   }
  }
 } else if (ASIC_IS_DCE3(rdev)) {

  rdev->mode_info.afmt[0] = kzalloc(sizeof(struct radeon_afmt), GFP_KERNEL);
  if (rdev->mode_info.afmt[0]) {
   rdev->mode_info.afmt[0]->offset = DCE3_HDMI_OFFSET0;
   rdev->mode_info.afmt[0]->id = 0;
  }
  rdev->mode_info.afmt[1] = kzalloc(sizeof(struct radeon_afmt), GFP_KERNEL);
  if (rdev->mode_info.afmt[1]) {
   rdev->mode_info.afmt[1]->offset = DCE3_HDMI_OFFSET1;
   rdev->mode_info.afmt[1]->id = 1;
  }
 } else if (ASIC_IS_DCE2(rdev)) {

  rdev->mode_info.afmt[0] = kzalloc(sizeof(struct radeon_afmt), GFP_KERNEL);
  if (rdev->mode_info.afmt[0]) {
   rdev->mode_info.afmt[0]->offset = DCE2_HDMI_OFFSET0;
   rdev->mode_info.afmt[0]->id = 0;
  }

  if (rdev->family >= CHIP_R600) {
   rdev->mode_info.afmt[1] = kzalloc(sizeof(struct radeon_afmt), GFP_KERNEL);
   if (rdev->mode_info.afmt[1]) {
    rdev->mode_info.afmt[1]->offset = DCE2_HDMI_OFFSET1;
    rdev->mode_info.afmt[1]->id = 1;
   }
  }
 }
}
