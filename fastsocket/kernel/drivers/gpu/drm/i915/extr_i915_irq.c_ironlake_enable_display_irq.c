
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int irq_mask; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int DEIMR ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;

__attribute__((used)) static void
ironlake_enable_display_irq(drm_i915_private_t *dev_priv, u32 mask)
{
 if ((dev_priv->irq_mask & mask) != 0) {
  dev_priv->irq_mask &= ~mask;
  I915_WRITE(DEIMR, dev_priv->irq_mask);
  POSTING_READ(DEIMR);
 }
}
