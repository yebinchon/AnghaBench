
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int type; int base; } ;
struct intel_dp {int dummy; } ;


 int INTEL_OUTPUT_DISPLAYPORT ;
 int INTEL_OUTPUT_EDP ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 int intel_dp_check_link_status (struct intel_dp*) ;

__attribute__((used)) static void intel_ddi_hot_plug(struct intel_encoder *intel_encoder)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&intel_encoder->base);
 int type = intel_encoder->type;

 if (type == INTEL_OUTPUT_DISPLAYPORT || type == INTEL_OUTPUT_EDP)
  intel_dp_check_link_status(intel_dp);
}
