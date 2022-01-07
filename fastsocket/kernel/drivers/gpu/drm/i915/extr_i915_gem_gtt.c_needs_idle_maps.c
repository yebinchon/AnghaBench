
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 scalar_t__ IS_GEN5 (struct drm_device*) ;
 scalar_t__ IS_MOBILE (struct drm_device*) ;
 scalar_t__ intel_iommu_gfx_mapped ;

__attribute__((used)) static inline bool needs_idle_maps(struct drm_device *dev)
{







 return 0;
}
