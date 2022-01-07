
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {int usec_timeout; TYPE_1__ mode_info; } ;
struct radeon_crtc {scalar_t__ crtc_offset; } ;


 int DRM_DEBUG (char*) ;
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS ;
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ;
 scalar_t__ EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS ;
 scalar_t__ EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH ;
 int EVERGREEN_GRPH_SURFACE_UPDATE_PENDING ;
 scalar_t__ EVERGREEN_GRPH_UPDATE ;
 int EVERGREEN_GRPH_UPDATE_LOCK ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int) ;
 int udelay (int) ;
 int upper_32_bits (scalar_t__) ;

u32 evergreen_page_flip(struct radeon_device *rdev, int crtc_id, u64 crtc_base)
{
 struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];
 u32 tmp = RREG32(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset);
 int i;


 tmp |= EVERGREEN_GRPH_UPDATE_LOCK;
 WREG32(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset, tmp);


 WREG32(EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH + radeon_crtc->crtc_offset,
        upper_32_bits(crtc_base));
 WREG32(EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
        (u32)crtc_base);

 WREG32(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH + radeon_crtc->crtc_offset,
        upper_32_bits(crtc_base));
 WREG32(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
        (u32)crtc_base);


 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset) & EVERGREEN_GRPH_SURFACE_UPDATE_PENDING)
   break;
  udelay(1);
 }
 DRM_DEBUG("Update pending now high. Unlocking vupdate_lock.\n");


 tmp &= ~EVERGREEN_GRPH_UPDATE_LOCK;
 WREG32(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset, tmp);


 return RREG32(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset) & EVERGREEN_GRPH_SURFACE_UPDATE_PENDING;
}
