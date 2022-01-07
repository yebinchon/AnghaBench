
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active_crtcs; } ;
struct radeon_device {int num_crtc; int ddev; TYPE_1__ pm; } ;


 int DRM_SCANOUTPOS_INVBL ;
 int DRM_SCANOUTPOS_VALID ;
 int radeon_get_crtc_scanoutpos (int ,int,int*,int*) ;

__attribute__((used)) static bool radeon_pm_in_vbl(struct radeon_device *rdev)
{
 int crtc, vpos, hpos, vbl_status;
 bool in_vbl = 1;




 for (crtc = 0; (crtc < rdev->num_crtc) && in_vbl; crtc++) {
  if (rdev->pm.active_crtcs & (1 << crtc)) {
   vbl_status = radeon_get_crtc_scanoutpos(rdev->ddev, crtc, &vpos, &hpos);
   if ((vbl_status & DRM_SCANOUTPOS_VALID) &&
       !(vbl_status & DRM_SCANOUTPOS_INVBL))
    in_vbl = 0;
  }
 }

 return in_vbl;
}
