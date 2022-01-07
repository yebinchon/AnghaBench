
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,int ,char*) ;
 int radeon_pm_in_vbl (struct radeon_device*) ;

__attribute__((used)) static bool radeon_pm_debug_check_in_vbl(struct radeon_device *rdev, bool finish)
{
 u32 stat_crtc = 0;
 bool in_vbl = radeon_pm_in_vbl(rdev);

 if (in_vbl == 0)
  DRM_DEBUG_DRIVER("not in vbl for pm change %08x at %s\n", stat_crtc,
    finish ? "exit" : "entry");
 return in_vbl;
}
