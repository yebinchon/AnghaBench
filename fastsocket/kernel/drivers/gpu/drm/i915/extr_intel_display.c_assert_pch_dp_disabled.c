
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DP_PIPEB_SELECT ;
 int DP_PORT_EN ;
 scalar_t__ HAS_PCH_IBX (int ) ;
 int I915_READ (int) ;
 int WARN (int,char*,...) ;
 int dp_pipe_enabled (struct drm_i915_private*,int,int,int) ;
 int pipe_name (int) ;

__attribute__((used)) static void assert_pch_dp_disabled(struct drm_i915_private *dev_priv,
       enum pipe pipe, int reg, u32 port_sel)
{
 u32 val = I915_READ(reg);
 WARN(dp_pipe_enabled(dev_priv, pipe, port_sel, val),
      "PCH DP (0x%08x) enabled on transcoder %c, should be disabled\n",
      reg, pipe_name(pipe));

 WARN(HAS_PCH_IBX(dev_priv->dev) && (val & DP_PORT_EN) == 0
      && (val & DP_PIPEB_SELECT),
      "IBX PCH dp port still using transcoder B\n");
}
