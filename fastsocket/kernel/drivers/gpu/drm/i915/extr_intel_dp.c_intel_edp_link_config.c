
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dp {int lane_count; int link_bw; } ;


 int drm_dp_bw_code_to_link_rate (int ) ;
 struct intel_dp* enc_to_intel_dp (int *) ;

void
intel_edp_link_config(struct intel_encoder *intel_encoder,
         int *lane_num, int *link_bw)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&intel_encoder->base);

 *lane_num = intel_dp->lane_count;
 *link_bw = drm_dp_bw_code_to_link_rate(intel_dp->link_bw);
}
