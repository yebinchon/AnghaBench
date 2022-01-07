
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum port { ____Placeholder_port } port ;


 int ARRAY_SIZE (int*) ;
 int DDI_BUF_TRANS (int) ;
 int DRM_DEBUG_DRIVER (char*,int ,char*) ;
 int I915_WRITE (int,int const) ;
 int PORT_E ;
 int WARN (int,char*,int ) ;
 int* hsw_ddi_translations_dp ;
 int* hsw_ddi_translations_fdi ;
 int port_name (int) ;

__attribute__((used)) static void intel_prepare_ddi_buffers(struct drm_device *dev, enum port port,
          bool use_fdi_mode)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 reg;
 int i;
 const u32 *ddi_translations = ((use_fdi_mode) ?
  hsw_ddi_translations_fdi :
  hsw_ddi_translations_dp);

 DRM_DEBUG_DRIVER("Initializing DDI buffers for port %c in %s mode\n",
   port_name(port),
   use_fdi_mode ? "FDI" : "DP");

 WARN((use_fdi_mode && (port != PORT_E)),
  "Programming port %c in FDI mode, this probably will not work.\n",
  port_name(port));

 for (i=0, reg=DDI_BUF_TRANS(port); i < ARRAY_SIZE(hsw_ddi_translations_fdi); i++) {
  I915_WRITE(reg, ddi_translations[i]);
  reg += 4;
 }
}
