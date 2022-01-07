
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int irq_mask; scalar_t__* pipestat; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int EMR ;
 int I915_DISPLAY_PIPE_A_EVENT_INTERRUPT ;
 int I915_DISPLAY_PIPE_B_EVENT_INTERRUPT ;
 int I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT ;
 int I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT ;
 int I915_ERROR_MEMORY_REFRESH ;
 int I915_ERROR_PAGE_TABLE ;
 int I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT ;
 int I915_USER_INTERRUPT ;
 int I915_WRITE16 (int ,int) ;
 int IER ;
 int IMR ;
 int POSTING_READ16 (int ) ;

__attribute__((used)) static int i8xx_irq_postinstall(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;

 dev_priv->pipestat[0] = 0;
 dev_priv->pipestat[1] = 0;

 I915_WRITE16(EMR,
       ~(I915_ERROR_PAGE_TABLE | I915_ERROR_MEMORY_REFRESH));


 dev_priv->irq_mask =
  ~(I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
    I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
    I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT |
    I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT |
    I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT);
 I915_WRITE16(IMR, dev_priv->irq_mask);

 I915_WRITE16(IER,
       I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
       I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
       I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT |
       I915_USER_INTERRUPT);
 POSTING_READ16(IER);

 return 0;
}
