
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int* dpcd; } ;


 int DP_BRANCH_OUI ;
 size_t DP_DOWN_STREAM_PORT_COUNT ;
 int DP_OUI_SUPPORT ;
 int DP_SINK_OUI ;
 int DRM_DEBUG_KMS (char*,int ,int ,int ) ;
 scalar_t__ intel_dp_aux_native_read_retry (struct intel_dp*,int ,int *,int) ;
 int ironlake_edp_panel_vdd_off (struct intel_dp*,int) ;
 int ironlake_edp_panel_vdd_on (struct intel_dp*) ;

__attribute__((used)) static void
intel_dp_probe_oui(struct intel_dp *intel_dp)
{
 u8 buf[3];

 if (!(intel_dp->dpcd[DP_DOWN_STREAM_PORT_COUNT] & DP_OUI_SUPPORT))
  return;

 ironlake_edp_panel_vdd_on(intel_dp);

 if (intel_dp_aux_native_read_retry(intel_dp, DP_SINK_OUI, buf, 3))
  DRM_DEBUG_KMS("Sink OUI: %02hx%02hx%02hx\n",
         buf[0], buf[1], buf[2]);

 if (intel_dp_aux_native_read_retry(intel_dp, DP_BRANCH_OUI, buf, 3))
  DRM_DEBUG_KMS("Branch OUI: %02hx%02hx%02hx\n",
         buf[0], buf[1], buf[2]);

 ironlake_edp_panel_vdd_off(intel_dp, 0);
}
