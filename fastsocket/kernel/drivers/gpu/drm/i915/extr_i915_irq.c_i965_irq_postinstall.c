
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int irq_mask; scalar_t__* pipestat; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int EMR ;
 int GM45_ERROR_CP_PRIV ;
 int GM45_ERROR_MEM_PRIV ;
 int GM45_ERROR_PAGE_TABLE ;
 int I915_ASLE_INTERRUPT ;
 int I915_BSD_USER_INTERRUPT ;
 int I915_DISPLAY_PIPE_A_EVENT_INTERRUPT ;
 int I915_DISPLAY_PIPE_B_EVENT_INTERRUPT ;
 int I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT ;
 int I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT ;
 int I915_DISPLAY_PORT_INTERRUPT ;
 int I915_ERROR_MEMORY_REFRESH ;
 int I915_ERROR_PAGE_TABLE ;
 int I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT ;
 int I915_USER_INTERRUPT ;
 int I915_WRITE (int ,int) ;
 int IER ;
 int IMR ;
 scalar_t__ IS_G4X (struct drm_device*) ;
 int PIPE_GMBUS_EVENT_ENABLE ;
 int PORT_HOTPLUG_EN ;
 int POSTING_READ (int ) ;
 int i915_enable_pipestat (TYPE_1__*,int ,int ) ;
 int intel_opregion_enable_asle (struct drm_device*) ;

__attribute__((used)) static int i965_irq_postinstall(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 u32 enable_mask;
 u32 error_mask;


 dev_priv->irq_mask = ~(I915_ASLE_INTERRUPT |
          I915_DISPLAY_PORT_INTERRUPT |
          I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
          I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
          I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT |
          I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT |
          I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT);

 enable_mask = ~dev_priv->irq_mask;
 enable_mask |= I915_USER_INTERRUPT;

 if (IS_G4X(dev))
  enable_mask |= I915_BSD_USER_INTERRUPT;

 dev_priv->pipestat[0] = 0;
 dev_priv->pipestat[1] = 0;
 i915_enable_pipestat(dev_priv, 0, PIPE_GMBUS_EVENT_ENABLE);





 if (IS_G4X(dev)) {
  error_mask = ~(GM45_ERROR_PAGE_TABLE |
          GM45_ERROR_MEM_PRIV |
          GM45_ERROR_CP_PRIV |
          I915_ERROR_MEMORY_REFRESH);
 } else {
  error_mask = ~(I915_ERROR_PAGE_TABLE |
          I915_ERROR_MEMORY_REFRESH);
 }
 I915_WRITE(EMR, error_mask);

 I915_WRITE(IMR, dev_priv->irq_mask);
 I915_WRITE(IER, enable_mask);
 POSTING_READ(IER);

 I915_WRITE(PORT_HOTPLUG_EN, 0);
 POSTING_READ(PORT_HOTPLUG_EN);

 intel_opregion_enable_asle(dev);

 return 0;
}
