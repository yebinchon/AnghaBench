
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_lvds_encoder {int pfit_control; int pfit_pgm_ratios; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_WRITE (int ,int ) ;
 int PFIT_CONTROL ;
 int PFIT_PGM_RATIOS ;
 struct intel_lvds_encoder* to_lvds_encoder (TYPE_1__*) ;

__attribute__((used)) static void intel_pre_enable_lvds(struct intel_encoder *encoder)
{
 struct drm_device *dev = encoder->base.dev;
 struct intel_lvds_encoder *enc = to_lvds_encoder(&encoder->base);
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (HAS_PCH_SPLIT(dev) || !enc->pfit_control)
  return;







 DRM_DEBUG_KMS("applying panel-fitter: %x, %x\n",
        enc->pfit_control,
        enc->pfit_pgm_ratios);

 I915_WRITE(PFIT_PGM_RATIOS, enc->pfit_pgm_ratios);
 I915_WRITE(PFIT_CONTROL, enc->pfit_control);
}
