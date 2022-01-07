
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_sdvo {int dummy; } ;
typedef int state ;






 int SDVO_CMD_SET_ENCODER_POWER_STATE ;
 int SDVO_ENCODER_STATE_OFF ;
 int SDVO_ENCODER_STATE_ON ;
 int SDVO_ENCODER_STATE_STANDBY ;
 int SDVO_ENCODER_STATE_SUSPEND ;
 int intel_sdvo_set_value (struct intel_sdvo*,int ,int *,int) ;

__attribute__((used)) static bool intel_sdvo_set_encoder_power_state(struct intel_sdvo *intel_sdvo,
            int mode)
{
 u8 state = SDVO_ENCODER_STATE_ON;

 switch (mode) {
 case 130:
  state = SDVO_ENCODER_STATE_ON;
  break;
 case 129:
  state = SDVO_ENCODER_STATE_STANDBY;
  break;
 case 128:
  state = SDVO_ENCODER_STATE_SUSPEND;
  break;
 case 131:
  state = SDVO_ENCODER_STATE_OFF;
  break;
 }

 return intel_sdvo_set_value(intel_sdvo,
        SDVO_CMD_SET_ENCODER_POWER_STATE, &state, sizeof(state));
}
