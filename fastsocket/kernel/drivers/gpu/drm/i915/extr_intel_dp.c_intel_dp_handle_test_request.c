
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;


 int DP_TEST_NAK ;
 int DP_TEST_RESPONSE ;
 int intel_dp_aux_native_write_1 (struct intel_dp*,int ,int ) ;

__attribute__((used)) static void
intel_dp_handle_test_request(struct intel_dp *intel_dp)
{

 intel_dp_aux_native_write_1(intel_dp, DP_TEST_RESPONSE, DP_TEST_NAK);
}
