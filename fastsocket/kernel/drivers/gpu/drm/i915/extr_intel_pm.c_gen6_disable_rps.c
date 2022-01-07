
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ pm_iir; } ;
struct drm_i915_private {TYPE_1__ rps; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int GEN6_PMIER ;
 int GEN6_PMIIR ;
 int GEN6_PMINTRMSK ;
 int GEN6_RC_CONTROL ;
 int GEN6_RPNSWREQ ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void gen6_disable_rps(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 I915_WRITE(GEN6_RC_CONTROL, 0);
 I915_WRITE(GEN6_RPNSWREQ, 1 << 31);
 I915_WRITE(GEN6_PMINTRMSK, 0xffffffff);
 I915_WRITE(GEN6_PMIER, 0);





 spin_lock_irq(&dev_priv->rps.lock);
 dev_priv->rps.pm_iir = 0;
 spin_unlock_irq(&dev_priv->rps.lock);

 I915_WRITE(GEN6_PMIIR, I915_READ(GEN6_PMIIR));
}
