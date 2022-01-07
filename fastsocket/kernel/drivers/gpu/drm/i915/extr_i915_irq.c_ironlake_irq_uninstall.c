
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_i915_private_t ;


 int DEIER ;
 int DEIIR ;
 int DEIMR ;
 int GTIER ;
 int GTIIR ;
 int GTIMR ;
 int HWSTAM ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int SDEIER ;
 int SDEIIR ;
 int SDEIMR ;

__attribute__((used)) static void ironlake_irq_uninstall(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;

 if (!dev_priv)
  return;

 I915_WRITE(HWSTAM, 0xffffffff);

 I915_WRITE(DEIMR, 0xffffffff);
 I915_WRITE(DEIER, 0x0);
 I915_WRITE(DEIIR, I915_READ(DEIIR));

 I915_WRITE(GTIMR, 0xffffffff);
 I915_WRITE(GTIER, 0x0);
 I915_WRITE(GTIIR, I915_READ(GTIIR));

 I915_WRITE(SDEIMR, 0xffffffff);
 I915_WRITE(SDEIER, 0x0);
 I915_WRITE(SDEIIR, I915_READ(SDEIIR));
}
