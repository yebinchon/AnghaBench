
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int targets ;
struct intel_sdvo_set_target_input_args {int member_0; } ;
struct intel_sdvo {int dummy; } ;


 int SDVO_CMD_SET_TARGET_INPUT ;
 int intel_sdvo_set_value (struct intel_sdvo*,int ,struct intel_sdvo_set_target_input_args*,int) ;

__attribute__((used)) static bool intel_sdvo_set_target_input(struct intel_sdvo *intel_sdvo)
{
 struct intel_sdvo_set_target_input_args targets = {0};
 return intel_sdvo_set_value(intel_sdvo,
        SDVO_CMD_SET_TARGET_INPUT,
        &targets, sizeof(targets));
}
