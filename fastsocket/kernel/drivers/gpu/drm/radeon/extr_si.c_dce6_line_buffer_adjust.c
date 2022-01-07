
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_crtc {TYPE_1__ base; scalar_t__ crtc_offset; } ;
struct drm_display_mode {int dummy; } ;


 int DC_LB_MEMORY_CONFIG (int) ;
 scalar_t__ DC_LB_MEMORY_SPLIT ;
 int WREG32 (scalar_t__,int ) ;

__attribute__((used)) static u32 dce6_line_buffer_adjust(struct radeon_device *rdev,
       struct radeon_crtc *radeon_crtc,
       struct drm_display_mode *mode,
       struct drm_display_mode *other_mode)
{
 u32 tmp;
 if (radeon_crtc->base.enabled && mode) {
  if (other_mode)
   tmp = 0;
  else
   tmp = 2;
 } else
  tmp = 0;

 WREG32(DC_LB_MEMORY_SPLIT + radeon_crtc->crtc_offset,
        DC_LB_MEMORY_CONFIG(tmp));

 if (radeon_crtc->base.enabled && mode) {
  switch (tmp) {
  case 0:
  default:
   return 4096 * 2;
  case 2:
   return 8192 * 2;
  }
 }


 return 0;
}
