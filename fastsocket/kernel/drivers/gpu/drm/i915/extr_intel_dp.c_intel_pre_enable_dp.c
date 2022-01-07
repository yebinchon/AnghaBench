
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dp {int dummy; } ;


 struct intel_dp* enc_to_intel_dp (int *) ;
 int ironlake_edp_pll_on (struct intel_dp*) ;
 scalar_t__ is_cpu_edp (struct intel_dp*) ;

__attribute__((used)) static void intel_pre_enable_dp(struct intel_encoder *encoder)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);

 if (is_cpu_edp(intel_dp))
  ironlake_edp_pll_on(intel_dp);
}
