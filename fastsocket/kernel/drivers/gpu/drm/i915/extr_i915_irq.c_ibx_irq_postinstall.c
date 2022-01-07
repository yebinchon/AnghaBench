
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_i915_private_t ;


 scalar_t__ HAS_PCH_IBX (struct drm_device*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int SDEIER ;
 int SDEIIR ;
 int SDEIMR ;
 int SDE_AUX_MASK ;
 int SDE_AUX_MASK_CPT ;
 int SDE_GMBUS ;
 int SDE_GMBUS_CPT ;
 int SDE_HOTPLUG_MASK ;
 int SDE_HOTPLUG_MASK_CPT ;
 int ibx_enable_hotplug (struct drm_device*) ;

__attribute__((used)) static void ibx_irq_postinstall(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 u32 mask;

 if (HAS_PCH_IBX(dev))
  mask = SDE_HOTPLUG_MASK |
         SDE_GMBUS |
         SDE_AUX_MASK;
 else
  mask = SDE_HOTPLUG_MASK_CPT |
         SDE_GMBUS_CPT |
         SDE_AUX_MASK_CPT;

 I915_WRITE(SDEIIR, I915_READ(SDEIIR));
 I915_WRITE(SDEIMR, ~mask);
 I915_WRITE(SDEIER, mask);
 POSTING_READ(SDEIER);

 ibx_enable_hotplug(dev);
}
