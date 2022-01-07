
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int* dpcd; } ;




 size_t DP_MAX_LINK_RATE ;

__attribute__((used)) static int
intel_dp_max_link_bw(struct intel_dp *intel_dp)
{
 int max_link_bw = intel_dp->dpcd[DP_MAX_LINK_RATE];

 switch (max_link_bw) {
 case 129:
 case 128:
  break;
 default:
  max_link_bw = 129;
  break;
 }
 return max_link_bw;
}
