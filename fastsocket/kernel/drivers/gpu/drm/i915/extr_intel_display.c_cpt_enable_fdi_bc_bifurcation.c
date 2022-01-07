
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;
 int FDI_BC_BIFURCATION_SELECT ;
 int FDI_RX_CTL (int ) ;
 int FDI_RX_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PIPE_B ;
 int PIPE_C ;
 int POSTING_READ (int ) ;
 int SOUTH_CHICKEN1 ;
 int WARN_ON (int) ;

__attribute__((used)) static void cpt_enable_fdi_bc_bifurcation(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 uint32_t temp;

 temp = I915_READ(SOUTH_CHICKEN1);
 if (temp & FDI_BC_BIFURCATION_SELECT)
  return;

 WARN_ON(I915_READ(FDI_RX_CTL(PIPE_B)) & FDI_RX_ENABLE);
 WARN_ON(I915_READ(FDI_RX_CTL(PIPE_C)) & FDI_RX_ENABLE);

 temp |= FDI_BC_BIFURCATION_SELECT;
 DRM_DEBUG_KMS("enabling fdi C rx\n");
 I915_WRITE(SOUTH_CHICKEN1, temp);
 POSTING_READ(SOUTH_CHICKEN1);
}
