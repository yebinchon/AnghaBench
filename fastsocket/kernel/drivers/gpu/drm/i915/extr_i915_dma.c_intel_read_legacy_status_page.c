
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ gfx_hws_cpu_addr; } ;
struct drm_i915_private {TYPE_1__ dri1; int dev; } ;


 scalar_t__ I915_NEED_GFX_HWS (int ) ;
 int LP_RING (struct drm_i915_private*) ;
 int intel_read_status_page (int ,int) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32
intel_read_legacy_status_page(struct drm_i915_private *dev_priv, int reg)
{
 if (I915_NEED_GFX_HWS(dev_priv->dev))
  return ioread32(dev_priv->dri1.gfx_hws_cpu_addr + reg);
 else
  return intel_read_status_page(LP_RING(dev_priv), reg);
}
