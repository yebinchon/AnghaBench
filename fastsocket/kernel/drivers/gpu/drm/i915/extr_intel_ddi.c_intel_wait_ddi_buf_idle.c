
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DDI_BUF_CTL (int) ;
 int DDI_BUF_IS_IDLE ;
 int DRM_ERROR (char*,int ) ;
 int I915_READ (int ) ;
 int port_name (int) ;
 int udelay (int) ;

__attribute__((used)) static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
        enum port port)
{
 uint32_t reg = DDI_BUF_CTL(port);
 int i;

 for (i = 0; i < 8; i++) {
  udelay(1);
  if (I915_READ(reg) & DDI_BUF_IS_IDLE)
   return;
 }
 DRM_ERROR("Timeout waiting for DDI BUF %c idle bit\n", port_name(port));
}
