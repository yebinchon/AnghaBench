
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int irq_lock; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int EINVAL ;
 int I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT ;
 int I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PIPE_START_VBLANK_INTERRUPT_ENABLE ;
 int VLV_IMR ;
 int i915_enable_pipestat (TYPE_1__*,int,int ) ;
 int i915_pipe_enabled (struct drm_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int valleyview_enable_vblank(struct drm_device *dev, int pipe)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 unsigned long irqflags;
 u32 imr;

 if (!i915_pipe_enabled(dev, pipe))
  return -EINVAL;

 spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 imr = I915_READ(VLV_IMR);
 if (pipe == 0)
  imr &= ~I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT;
 else
  imr &= ~I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT;
 I915_WRITE(VLV_IMR, imr);
 i915_enable_pipestat(dev_priv, pipe,
        PIPE_START_VBLANK_INTERRUPT_ENABLE);
 spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);

 return 0;
}
