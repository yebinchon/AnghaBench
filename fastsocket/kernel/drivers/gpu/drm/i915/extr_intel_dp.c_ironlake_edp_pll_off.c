
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int dummy; } ;
struct TYPE_4__ {struct drm_crtc* crtc; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_6__ {int pipe; } ;


 int DP_A ;
 int DP_PLL_ENABLE ;
 int DP_PORT_EN ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int WARN (int,char*) ;
 int assert_pipe_disabled (struct drm_i915_private*,int ) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 TYPE_3__* to_intel_crtc (struct drm_crtc*) ;
 int udelay (int) ;

__attribute__((used)) static void ironlake_edp_pll_off(struct intel_dp *intel_dp)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 struct drm_crtc *crtc = intel_dig_port->base.base.crtc;
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 dpa_ctl;

 assert_pipe_disabled(dev_priv,
        to_intel_crtc(crtc)->pipe);

 dpa_ctl = I915_READ(DP_A);
 WARN((dpa_ctl & DP_PLL_ENABLE) == 0,
      "dp pll off, should be on\n");
 WARN(dpa_ctl & DP_PORT_EN, "dp port still on, should be off\n");




 dpa_ctl &= ~DP_PLL_ENABLE;
 I915_WRITE(DP_A, dpa_ctl);
 POSTING_READ(DP_A);
 udelay(200);
}
