
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 scalar_t__ HAS_DDI (struct drm_device*) ;
 int intel_ddi_pll_init (struct drm_device*) ;

__attribute__((used)) static void intel_cpu_pll_init(struct drm_device *dev)
{
 if (HAS_DDI(dev))
  intel_ddi_pll_init(dev);
}
