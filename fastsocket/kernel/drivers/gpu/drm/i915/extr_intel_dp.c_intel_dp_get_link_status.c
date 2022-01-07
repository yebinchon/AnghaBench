
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct intel_dp {int dummy; } ;


 int DP_LANE0_1_STATUS ;
 int DP_LINK_STATUS_SIZE ;
 int intel_dp_aux_native_read_retry (struct intel_dp*,int ,int *,int ) ;

__attribute__((used)) static bool
intel_dp_get_link_status(struct intel_dp *intel_dp, uint8_t link_status[DP_LINK_STATUS_SIZE])
{
 return intel_dp_aux_native_read_retry(intel_dp,
           DP_LANE0_1_STATUS,
           link_status,
           DP_LINK_STATUS_SIZE);
}
