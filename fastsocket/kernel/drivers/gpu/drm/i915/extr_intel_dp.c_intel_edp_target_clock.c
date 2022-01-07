
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_encoder {int base; } ;
struct intel_dp {struct intel_connector* attached_connector; } ;
struct TYPE_4__ {TYPE_1__* fixed_mode; } ;
struct intel_connector {TYPE_2__ panel; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_3__ {int clock; } ;


 struct intel_dp* enc_to_intel_dp (int *) ;

int
intel_edp_target_clock(struct intel_encoder *intel_encoder,
         struct drm_display_mode *mode)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&intel_encoder->base);
 struct intel_connector *intel_connector = intel_dp->attached_connector;

 if (intel_connector->panel.fixed_mode)
  return intel_connector->panel.fixed_mode->clock;
 else
  return mode->clock;
}
