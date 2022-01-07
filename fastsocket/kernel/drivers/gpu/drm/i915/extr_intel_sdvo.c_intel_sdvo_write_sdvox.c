
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_sdvo {scalar_t__ sdvo_reg; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_READ (scalar_t__) ;
 int I915_WRITE (scalar_t__,int ) ;
 scalar_t__ PCH_SDVOB ;
 scalar_t__ SDVOB ;
 scalar_t__ SDVOC ;

__attribute__((used)) static void intel_sdvo_write_sdvox(struct intel_sdvo *intel_sdvo, u32 val)
{
 struct drm_device *dev = intel_sdvo->base.base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 bval = val, cval = val;
 int i;

 if (intel_sdvo->sdvo_reg == PCH_SDVOB) {
  I915_WRITE(intel_sdvo->sdvo_reg, val);
  I915_READ(intel_sdvo->sdvo_reg);
  return;
 }

 if (intel_sdvo->sdvo_reg == SDVOB) {
  cval = I915_READ(SDVOC);
 } else {
  bval = I915_READ(SDVOB);
 }





 for (i = 0; i < 2; i++)
 {
  I915_WRITE(SDVOB, bval);
  I915_READ(SDVOB);
  I915_WRITE(SDVOC, cval);
  I915_READ(SDVOC);
 }
}
