
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int revision; } ;


 int DRM_INFO (char*) ;
 int HAS_BLT (struct drm_device*) ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;

__attribute__((used)) static bool
intel_enable_blt(struct drm_device *dev)
{
 if (!HAS_BLT(dev))
  return 0;


 if (IS_GEN6(dev) && dev->pdev->revision < 8) {
  DRM_INFO("BLT not supported on this pre-production hardware;"
    " graphics performance will be degraded.\n");
  return 0;
 }

 return 1;
}
