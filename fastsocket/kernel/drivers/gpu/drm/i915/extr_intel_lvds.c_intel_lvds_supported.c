
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int IS_I830 (struct drm_device*) ;
 scalar_t__ IS_MOBILE (struct drm_device*) ;

__attribute__((used)) static bool intel_lvds_supported(struct drm_device *dev)
{


 if (HAS_PCH_SPLIT(dev))
  return 1;



 return IS_MOBILE(dev) && !IS_I830(dev);
}
