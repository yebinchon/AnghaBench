
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int irq_mask; int gt_irq_mask; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int DEIER ;
 int DEIIR ;
 int DEIMR ;
 int DE_AUX_CHANNEL_A ;
 int DE_GSE ;
 int DE_MASTER_IRQ_CONTROL ;
 int DE_PCH_EVENT ;
 int DE_PCU_EVENT ;
 int DE_PIPEA_VBLANK ;
 int DE_PIPEB_VBLANK ;
 int DE_PLANEA_FLIP_DONE ;
 int DE_PLANEB_FLIP_DONE ;
 int GEN6_BLITTER_USER_INTERRUPT ;
 int GEN6_BSD_USER_INTERRUPT ;
 int GTIER ;
 int GTIIR ;
 int GTIMR ;
 int GT_BSD_USER_INTERRUPT ;
 int GT_PIPE_NOTIFY ;
 int GT_USER_INTERRUPT ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 scalar_t__ IS_IRONLAKE_M (struct drm_device*) ;
 int POSTING_READ (int ) ;
 int ibx_irq_postinstall (struct drm_device*) ;
 int ironlake_enable_display_irq (TYPE_1__*,int) ;

__attribute__((used)) static int ironlake_irq_postinstall(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;

 u32 display_mask = DE_MASTER_IRQ_CONTROL | DE_GSE | DE_PCH_EVENT |
      DE_PLANEA_FLIP_DONE | DE_PLANEB_FLIP_DONE |
      DE_AUX_CHANNEL_A;
 u32 render_irqs;

 dev_priv->irq_mask = ~display_mask;


 I915_WRITE(DEIIR, I915_READ(DEIIR));
 I915_WRITE(DEIMR, dev_priv->irq_mask);
 I915_WRITE(DEIER, display_mask | DE_PIPEA_VBLANK | DE_PIPEB_VBLANK);
 POSTING_READ(DEIER);

 dev_priv->gt_irq_mask = ~0;

 I915_WRITE(GTIIR, I915_READ(GTIIR));
 I915_WRITE(GTIMR, dev_priv->gt_irq_mask);

 if (IS_GEN6(dev))
  render_irqs =
   GT_USER_INTERRUPT |
   GEN6_BSD_USER_INTERRUPT |
   GEN6_BLITTER_USER_INTERRUPT;
 else
  render_irqs =
   GT_USER_INTERRUPT |
   GT_PIPE_NOTIFY |
   GT_BSD_USER_INTERRUPT;
 I915_WRITE(GTIER, render_irqs);
 POSTING_READ(GTIER);

 ibx_irq_postinstall(dev);

 if (IS_IRONLAKE_M(dev)) {

  I915_WRITE(DEIIR, DE_PCU_EVENT);
  I915_WRITE(DEIER, I915_READ(DEIER) | DE_PCU_EVENT);
  ironlake_enable_display_irq(dev_priv, DE_PCU_EVENT);
 }

 return 0;
}
