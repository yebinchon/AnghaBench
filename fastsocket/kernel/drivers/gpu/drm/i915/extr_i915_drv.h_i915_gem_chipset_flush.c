
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int intel_gtt_chipset_flush () ;

__attribute__((used)) static inline void i915_gem_chipset_flush(struct drm_device *dev)
{
 if (INTEL_INFO(dev)->gen < 6)
  intel_gtt_chipset_flush();
}
