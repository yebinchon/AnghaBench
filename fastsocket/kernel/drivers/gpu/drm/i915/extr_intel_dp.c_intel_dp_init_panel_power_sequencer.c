
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {void* backlight_off_delay; void* backlight_on_delay; void* panel_power_cycle_delay; void* panel_power_down_delay; void* panel_power_up_delay; } ;
struct edp_power_seq {int t1_t3; int t8; int t9; int t10; int t11_t12; } ;
struct TYPE_2__ {struct edp_power_seq pps; } ;
struct drm_i915_private {TYPE_1__ edp; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,int,int,...) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PANEL_LIGHT_OFF_DELAY_MASK ;
 int PANEL_LIGHT_OFF_DELAY_SHIFT ;
 int PANEL_LIGHT_ON_DELAY_MASK ;
 int PANEL_LIGHT_ON_DELAY_SHIFT ;
 int PANEL_POWER_CYCLE_DELAY_MASK ;
 int PANEL_POWER_CYCLE_DELAY_SHIFT ;
 int PANEL_POWER_DOWN_DELAY_MASK ;
 int PANEL_POWER_DOWN_DELAY_SHIFT ;
 int PANEL_POWER_UP_DELAY_MASK ;
 int PANEL_POWER_UP_DELAY_SHIFT ;
 int PCH_PP_CONTROL ;
 int PCH_PP_DIVISOR ;
 int PCH_PP_OFF_DELAYS ;
 int PCH_PP_ON_DELAYS ;
 int assign_final (int ) ;
 void* get_delay (int ) ;
 int ironlake_get_pp_control (struct drm_i915_private*) ;
 int t10 ;
 int t11_t12 ;
 int t1_t3 ;
 int t8 ;
 int t9 ;

__attribute__((used)) static void
intel_dp_init_panel_power_sequencer(struct drm_device *dev,
        struct intel_dp *intel_dp,
        struct edp_power_seq *out)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct edp_power_seq cur, vbt, spec, final;
 u32 pp_on, pp_off, pp_div, pp;



 pp = ironlake_get_pp_control(dev_priv);
 I915_WRITE(PCH_PP_CONTROL, pp);

 pp_on = I915_READ(PCH_PP_ON_DELAYS);
 pp_off = I915_READ(PCH_PP_OFF_DELAYS);
 pp_div = I915_READ(PCH_PP_DIVISOR);


 cur.t1_t3 = (pp_on & PANEL_POWER_UP_DELAY_MASK) >>
  PANEL_POWER_UP_DELAY_SHIFT;

 cur.t8 = (pp_on & PANEL_LIGHT_ON_DELAY_MASK) >>
  PANEL_LIGHT_ON_DELAY_SHIFT;

 cur.t9 = (pp_off & PANEL_LIGHT_OFF_DELAY_MASK) >>
  PANEL_LIGHT_OFF_DELAY_SHIFT;

 cur.t10 = (pp_off & PANEL_POWER_DOWN_DELAY_MASK) >>
  PANEL_POWER_DOWN_DELAY_SHIFT;

 cur.t11_t12 = ((pp_div & PANEL_POWER_CYCLE_DELAY_MASK) >>
         PANEL_POWER_CYCLE_DELAY_SHIFT) * 1000;

 DRM_DEBUG_KMS("cur t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\n",
        cur.t1_t3, cur.t8, cur.t9, cur.t10, cur.t11_t12);

 vbt = dev_priv->edp.pps;



 spec.t1_t3 = 210 * 10;
 spec.t8 = 50 * 10;
 spec.t9 = 50 * 10;
 spec.t10 = 500 * 10;




 spec.t11_t12 = (510 + 100) * 10;

 DRM_DEBUG_KMS("vbt t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\n",
        vbt.t1_t3, vbt.t8, vbt.t9, vbt.t10, vbt.t11_t12);






 final.t1_t3 = (max(cur.t1_t3, vbt.t1_t3) == 0 ? spec.t1_t3 : max(cur.t1_t3, vbt.t1_t3));
 final.t8 = (max(cur.t8, vbt.t8) == 0 ? spec.t8 : max(cur.t8, vbt.t8));
 final.t9 = (max(cur.t9, vbt.t9) == 0 ? spec.t9 : max(cur.t9, vbt.t9));
 final.t10 = (max(cur.t10, vbt.t10) == 0 ? spec.t10 : max(cur.t10, vbt.t10));
 final.t11_t12 = (max(cur.t11_t12, vbt.t11_t12) == 0 ? spec.t11_t12 : max(cur.t11_t12, vbt.t11_t12));



 intel_dp->panel_power_up_delay = (DIV_ROUND_UP(final.t1_t3, 10));
 intel_dp->backlight_on_delay = (DIV_ROUND_UP(final.t8, 10));
 intel_dp->backlight_off_delay = (DIV_ROUND_UP(final.t9, 10));
 intel_dp->panel_power_down_delay = (DIV_ROUND_UP(final.t10, 10));
 intel_dp->panel_power_cycle_delay = (DIV_ROUND_UP(final.t11_t12, 10));


 DRM_DEBUG_KMS("panel power up delay %d, power down delay %d, power cycle delay %d\n",
        intel_dp->panel_power_up_delay, intel_dp->panel_power_down_delay,
        intel_dp->panel_power_cycle_delay);

 DRM_DEBUG_KMS("backlight on delay %d, off delay %d\n",
        intel_dp->backlight_on_delay, intel_dp->backlight_off_delay);

 if (out)
  *out = final;
}
