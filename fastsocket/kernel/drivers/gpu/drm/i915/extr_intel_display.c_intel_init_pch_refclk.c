
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 scalar_t__ HAS_PCH_CPT (struct drm_device*) ;
 scalar_t__ HAS_PCH_IBX (struct drm_device*) ;
 scalar_t__ HAS_PCH_LPT (struct drm_device*) ;
 int ironlake_init_pch_refclk (struct drm_device*) ;
 int lpt_init_pch_refclk (struct drm_device*) ;

void intel_init_pch_refclk(struct drm_device *dev)
{
 if (HAS_PCH_IBX(dev) || HAS_PCH_CPT(dev))
  ironlake_init_pch_refclk(dev);
 else if (HAS_PCH_LPT(dev))
  lpt_init_pch_refclk(dev);
}
