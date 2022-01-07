
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dp {int dummy; } ;


 int DRM_MODE_DPMS_ON ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 int intel_dp_link_down (struct intel_dp*) ;
 int intel_dp_sink_dpms (struct intel_dp*,int ) ;
 int ironlake_edp_backlight_off (struct intel_dp*) ;
 int ironlake_edp_panel_off (struct intel_dp*) ;
 int ironlake_edp_panel_vdd_on (struct intel_dp*) ;
 int is_cpu_edp (struct intel_dp*) ;

__attribute__((used)) static void intel_disable_dp(struct intel_encoder *encoder)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);



 ironlake_edp_panel_vdd_on(intel_dp);
 ironlake_edp_backlight_off(intel_dp);
 intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
 ironlake_edp_panel_off(intel_dp);


 if (!is_cpu_edp(intel_dp))
  intel_dp_link_down(intel_dp);
}
