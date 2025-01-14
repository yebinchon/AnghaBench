
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_encoder {int active_device; } ;
struct TYPE_4__ {int atom_context; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ mode_info; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_encoder {int crtc; struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef int args ;
struct TYPE_5__ {int ucCRTC; int ucEnable; } ;
typedef TYPE_2__ ENABLE_YUV_PS_ALLOCATION ;


 int ATOM_DEVICE_CV_SUPPORT ;
 int ATOM_DEVICE_TV_SUPPORT ;
 int ATOM_ENABLE ;
 int ATOM_S3_CV_ACTIVE ;
 int ATOM_S3_TV1_ACTIVE ;
 scalar_t__ CHIP_R600 ;
 int COMMAND ;
 int EnableYUV ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int R600_BIOS_3_SCRATCH ;
 int RADEON_BIOS_3_SCRATCH ;
 int RREG32 (int) ;
 int WREG32 (int,int) ;
 int atom_execute_table (int ,int,int*) ;
 int memset (TYPE_2__*,int ,int) ;
 struct radeon_crtc* to_radeon_crtc (int ) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
atombios_yuv_setup(struct drm_encoder *encoder, bool enable)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(encoder->crtc);
 ENABLE_YUV_PS_ALLOCATION args;
 int index = GetIndexIntoMasterTable(COMMAND, EnableYUV);
 uint32_t temp, reg;

 memset(&args, 0, sizeof(args));

 if (rdev->family >= CHIP_R600)
  reg = R600_BIOS_3_SCRATCH;
 else
  reg = RADEON_BIOS_3_SCRATCH;


 temp = RREG32(reg);
 if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT))
  WREG32(reg, (ATOM_S3_TV1_ACTIVE |
        (radeon_crtc->crtc_id << 18)));
 else if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT))
  WREG32(reg, (ATOM_S3_CV_ACTIVE | (radeon_crtc->crtc_id << 24)));
 else
  WREG32(reg, 0);

 if (enable)
  args.ucEnable = ATOM_ENABLE;
 args.ucCRTC = radeon_crtc->crtc_id;

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

 WREG32(reg, temp);
}
