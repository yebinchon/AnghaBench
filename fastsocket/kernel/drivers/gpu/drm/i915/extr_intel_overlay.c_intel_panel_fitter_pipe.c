
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_READ (int ) ;
 scalar_t__ IS_GEN4 (struct drm_device*) ;
 scalar_t__ IS_I830 (struct drm_device*) ;
 int PFIT_CONTROL ;
 int PFIT_ENABLE ;

__attribute__((used)) static int intel_panel_fitter_pipe(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 pfit_control;


 if (IS_I830(dev))
  return -1;

 pfit_control = I915_READ(PFIT_CONTROL);


 if ((pfit_control & PFIT_ENABLE) == 0)
  return -1;


 if (IS_GEN4(dev))
  return (pfit_control >> 29) & 0x3;


 return 1;
}
