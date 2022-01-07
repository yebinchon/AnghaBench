
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int irq_received; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int DEIER ;
 int DEIMR ;
 int GTIER ;
 int GTIMR ;
 int HWSTAM ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int SDEIER ;
 int SDEIMR ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static void ironlake_irq_preinstall(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;

 atomic_set(&dev_priv->irq_received, 0);

 I915_WRITE(HWSTAM, 0xeffe);



 I915_WRITE(DEIMR, 0xffffffff);
 I915_WRITE(DEIER, 0x0);
 POSTING_READ(DEIER);


 I915_WRITE(GTIMR, 0xffffffff);
 I915_WRITE(GTIER, 0x0);
 POSTING_READ(GTIER);


 I915_WRITE(SDEIMR, 0xffffffff);
 I915_WRITE(SDEIER, 0x0);
 POSTING_READ(SDEIER);
}
