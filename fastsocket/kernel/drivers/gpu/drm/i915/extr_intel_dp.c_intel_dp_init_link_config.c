
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int* dpcd; int * link_configuration; int lane_count; int link_bw; } ;


 size_t DP_DPCD_REV ;
 int DP_ENHANCED_FRAME_CAP ;
 int DP_LANE_COUNT_ENHANCED_FRAME_EN ;
 int DP_LINK_CONFIGURATION_SIZE ;
 size_t DP_MAX_LANE_COUNT ;
 int DP_SET_ANSI_8B10B ;
 int memset (int *,int ,int ) ;

void intel_dp_init_link_config(struct intel_dp *intel_dp)
{
 memset(intel_dp->link_configuration, 0, DP_LINK_CONFIGURATION_SIZE);
 intel_dp->link_configuration[0] = intel_dp->link_bw;
 intel_dp->link_configuration[1] = intel_dp->lane_count;
 intel_dp->link_configuration[8] = DP_SET_ANSI_8B10B;



 if (intel_dp->dpcd[DP_DPCD_REV] >= 0x11 &&
     (intel_dp->dpcd[DP_MAX_LANE_COUNT] & DP_ENHANCED_FRAME_CAP)) {
  intel_dp->link_configuration[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
 }
}
