
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct drm_encoder {int dummy; } ;


 struct intel_dp* enc_to_intel_dp (struct drm_encoder*) ;
 int is_pch_edp (struct intel_dp*) ;

bool intel_encoder_is_pch_edp(struct drm_encoder *encoder)
{
 struct intel_dp *intel_dp;

 if (!encoder)
  return 0;

 intel_dp = enc_to_intel_dp(encoder);

 return is_pch_edp(intel_dp);
}
