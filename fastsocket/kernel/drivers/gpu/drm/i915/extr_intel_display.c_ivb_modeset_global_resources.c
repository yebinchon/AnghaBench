
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int enabled; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int * pipe_to_crtc_mapping; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;
 int FDI_BC_BIFURCATION_SELECT ;
 int FDI_RX_CTL (size_t) ;
 int FDI_RX_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 size_t PIPE_B ;
 size_t PIPE_C ;
 int SOUTH_CHICKEN1 ;
 int WARN_ON (int) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void ivb_modeset_global_resources(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *pipe_B_crtc =
  to_intel_crtc(dev_priv->pipe_to_crtc_mapping[PIPE_B]);
 struct intel_crtc *pipe_C_crtc =
  to_intel_crtc(dev_priv->pipe_to_crtc_mapping[PIPE_C]);
 uint32_t temp;




 if (!pipe_B_crtc->base.enabled && !pipe_C_crtc->base.enabled) {
  WARN_ON(I915_READ(FDI_RX_CTL(PIPE_B)) & FDI_RX_ENABLE);
  WARN_ON(I915_READ(FDI_RX_CTL(PIPE_C)) & FDI_RX_ENABLE);

  temp = I915_READ(SOUTH_CHICKEN1);
  temp &= ~FDI_BC_BIFURCATION_SELECT;
  DRM_DEBUG_KMS("disabling fdi C rx\n");
  I915_WRITE(SOUTH_CHICKEN1, temp);
 }
}
