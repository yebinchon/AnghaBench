
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int HDMIB ;
 int HDMIC ;
 int HDMID ;
 int I915_READ (int) ;
 int PCH_ADPA ;
 int PCH_DP_B ;
 int PCH_DP_C ;
 int PCH_DP_D ;
 int PCH_LVDS ;
 int TRANS_DP_PORT_SEL_B ;
 int TRANS_DP_PORT_SEL_C ;
 int TRANS_DP_PORT_SEL_D ;
 int WARN (int ,char*,int ) ;
 int adpa_pipe_enabled (struct drm_i915_private*,int,int ) ;
 int assert_pch_dp_disabled (struct drm_i915_private*,int,int ,int ) ;
 int assert_pch_hdmi_disabled (struct drm_i915_private*,int,int ) ;
 int lvds_pipe_enabled (struct drm_i915_private*,int,int ) ;
 int pipe_name (int) ;

__attribute__((used)) static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
          enum pipe pipe)
{
 int reg;
 u32 val;

 assert_pch_dp_disabled(dev_priv, pipe, PCH_DP_B, TRANS_DP_PORT_SEL_B);
 assert_pch_dp_disabled(dev_priv, pipe, PCH_DP_C, TRANS_DP_PORT_SEL_C);
 assert_pch_dp_disabled(dev_priv, pipe, PCH_DP_D, TRANS_DP_PORT_SEL_D);

 reg = PCH_ADPA;
 val = I915_READ(reg);
 WARN(adpa_pipe_enabled(dev_priv, pipe, val),
      "PCH VGA enabled on transcoder %c, should be disabled\n",
      pipe_name(pipe));

 reg = PCH_LVDS;
 val = I915_READ(reg);
 WARN(lvds_pipe_enabled(dev_priv, pipe, val),
      "PCH LVDS enabled on transcoder %c, should be disabled\n",
      pipe_name(pipe));

 assert_pch_hdmi_disabled(dev_priv, pipe, HDMIB);
 assert_pch_hdmi_disabled(dev_priv, pipe, HDMIC);
 assert_pch_hdmi_disabled(dev_priv, pipe, HDMID);
}
