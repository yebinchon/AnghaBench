
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; struct drm_device* dev; } ;
struct intel_crtc {int pipe; int fdi_lanes; TYPE_1__ base; } ;
struct drm_i915_private {int num_pipe; TYPE_2__** pipe_to_crtc_mapping; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int enabled; } ;


 int BUG () ;
 int DRM_DEBUG_KMS (char*,...) ;
 int FDI_BC_BIFURCATION_SELECT ;
 int I915_READ (int ) ;



 int SOUTH_CHICKEN1 ;
 int WARN_ON (int) ;
 int cpt_enable_fdi_bc_bifurcation (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (TYPE_2__*) ;

__attribute__((used)) static bool ironlake_check_fdi_lanes(struct intel_crtc *intel_crtc)
{
 struct drm_device *dev = intel_crtc->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *pipe_B_crtc =
  to_intel_crtc(dev_priv->pipe_to_crtc_mapping[129]);

 DRM_DEBUG_KMS("checking fdi config on pipe %i, lanes %i\n",
        intel_crtc->pipe, intel_crtc->fdi_lanes);
 if (intel_crtc->fdi_lanes > 4) {
  DRM_DEBUG_KMS("invalid fdi lane config on pipe %i: %i lanes\n",
         intel_crtc->pipe, intel_crtc->fdi_lanes);

  intel_crtc->fdi_lanes = 4;

  return 0;
 }

 if (dev_priv->num_pipe == 2)
  return 1;

 switch (intel_crtc->pipe) {
 case 130:
  return 1;
 case 129:
  if (dev_priv->pipe_to_crtc_mapping[128]->enabled &&
      intel_crtc->fdi_lanes > 2) {
   DRM_DEBUG_KMS("invalid shared fdi lane config on pipe %i: %i lanes\n",
          intel_crtc->pipe, intel_crtc->fdi_lanes);

   intel_crtc->fdi_lanes = 2;

   return 0;
  }

  if (intel_crtc->fdi_lanes > 2)
   WARN_ON(I915_READ(SOUTH_CHICKEN1) & FDI_BC_BIFURCATION_SELECT);
  else
   cpt_enable_fdi_bc_bifurcation(dev);

  return 1;
 case 128:
  if (!pipe_B_crtc->base.enabled || pipe_B_crtc->fdi_lanes <= 2) {
   if (intel_crtc->fdi_lanes > 2) {
    DRM_DEBUG_KMS("invalid shared fdi lane config on pipe %i: %i lanes\n",
           intel_crtc->pipe, intel_crtc->fdi_lanes);

    intel_crtc->fdi_lanes = 2;

    return 0;
   }
  } else {
   DRM_DEBUG_KMS("fdi link B uses too many lanes to enable link C\n");
   return 0;
  }

  cpt_enable_fdi_bc_bifurcation(dev);

  return 1;
 default:
  BUG();
 }
}
