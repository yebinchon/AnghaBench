
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_PCH_IBX (int ) ;
 int I915_READ (int) ;
 int PORT_ENABLE ;
 int SDVO_PIPE_B_SELECT ;
 int WARN (int,char*,...) ;
 int hdmi_pipe_enabled (struct drm_i915_private*,int,int) ;
 int pipe_name (int) ;

__attribute__((used)) static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
         enum pipe pipe, int reg)
{
 u32 val = I915_READ(reg);
 WARN(hdmi_pipe_enabled(dev_priv, pipe, val),
      "PCH HDMI (0x%08x) enabled on transcoder %c, should be disabled\n",
      reg, pipe_name(pipe));

 WARN(HAS_PCH_IBX(dev_priv->dev) && (val & PORT_ENABLE) == 0
      && (val & SDVO_PIPE_B_SELECT),
      "IBX PCH hdmi port still using transcoder B\n");
}
