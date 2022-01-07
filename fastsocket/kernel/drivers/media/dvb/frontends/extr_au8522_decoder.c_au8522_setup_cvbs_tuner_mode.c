
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au8522_state {int dummy; } ;


 int AU8522_CLAMPING_CONTROL_REG083H ;
 int AU8522_INPUT_CONTROL_REG081H ;
 int AU8522_INPUT_CONTROL_REG081H_CVBS_CH4_SIF ;
 int AU8522_MODULE_CLOCK_CONTROL_REG0A3H ;
 int AU8522_MODULE_CLOCK_CONTROL_REG0A3H_CVBS ;
 int AU8522_PGA_CONTROL_REG082H ;
 int AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H ;
 int AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H_CVBS ;
 int au8522_writereg (struct au8522_state*,int ,int) ;
 int setup_decoder_defaults (struct au8522_state*,int) ;

__attribute__((used)) static void au8522_setup_cvbs_tuner_mode(struct au8522_state *state)
{

 au8522_writereg(state, AU8522_MODULE_CLOCK_CONTROL_REG0A3H,
   AU8522_MODULE_CLOCK_CONTROL_REG0A3H_CVBS);



 au8522_writereg(state, AU8522_PGA_CONTROL_REG082H, 0x00);


 au8522_writereg(state, AU8522_CLAMPING_CONTROL_REG083H, 0x0e);


 au8522_writereg(state, AU8522_PGA_CONTROL_REG082H, 0x10);


 au8522_writereg(state, AU8522_INPUT_CONTROL_REG081H,
   AU8522_INPUT_CONTROL_REG081H_CVBS_CH4_SIF);

 setup_decoder_defaults(state,
          AU8522_INPUT_CONTROL_REG081H_CVBS_CH4_SIF);

 au8522_writereg(state, AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H,
   AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H_CVBS);
}
