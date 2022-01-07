
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_lvds_encoder {int reg; TYPE_2__ base; } ;
struct drm_i915_private {unsigned int bios_lvds_val; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 unsigned int I915_READ (int ) ;
 unsigned int LVDS_CLKB_POWER_MASK ;
 unsigned int LVDS_CLKB_POWER_UP ;
 unsigned int LVDS_DETECTED ;
 unsigned int LVDS_PIPE_MASK ;
 scalar_t__ dmi_check_system (int ) ;
 int i915_lvds_channel_mode ;
 int intel_dual_link_lvds ;

__attribute__((used)) static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
{
 struct drm_device *dev = lvds_encoder->base.base.dev;
 unsigned int val;
 struct drm_i915_private *dev_priv = dev->dev_private;


 if (i915_lvds_channel_mode > 0)
  return i915_lvds_channel_mode == 2;

 if (dmi_check_system(intel_dual_link_lvds))
  return 1;






 val = I915_READ(lvds_encoder->reg);
 if (!(val & ~(LVDS_PIPE_MASK | LVDS_DETECTED)))
  val = dev_priv->bios_lvds_val;

 return (val & LVDS_CLKB_POWER_MASK) == LVDS_CLKB_POWER_UP;
}
