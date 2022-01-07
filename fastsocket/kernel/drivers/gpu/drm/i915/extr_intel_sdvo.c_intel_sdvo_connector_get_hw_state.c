
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_sdvo_connector {int output_flag; } ;
struct intel_sdvo {int dummy; } ;
struct intel_connector {int base; } ;


 struct intel_sdvo* intel_attached_sdvo (int *) ;
 int intel_sdvo_get_active_outputs (struct intel_sdvo*,int*) ;
 struct intel_sdvo_connector* to_intel_sdvo_connector (int *) ;

__attribute__((used)) static bool intel_sdvo_connector_get_hw_state(struct intel_connector *connector)
{
 struct intel_sdvo_connector *intel_sdvo_connector =
  to_intel_sdvo_connector(&connector->base);
 struct intel_sdvo *intel_sdvo = intel_attached_sdvo(&connector->base);
 u16 active_outputs;

 intel_sdvo_get_active_outputs(intel_sdvo, &active_outputs);

 if (active_outputs & intel_sdvo_connector->output_flag)
  return 1;
 else
  return 0;
}
