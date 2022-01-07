
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct au8522_state {int dummy; } ;


 int AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H ;
 int AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H_CVBS ;
 int au8522_writereg (struct au8522_state*,int ,int) ;
 int msleep (int) ;
 struct au8522_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int au8522_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct au8522_state *state = to_state(sd);

 if (enable) {
  au8522_writereg(state, AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H,
    0x01);
  msleep(1);
  au8522_writereg(state, AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H,
    AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H_CVBS);
 } else {


  au8522_writereg(state, AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H,
    1 << 5);
 }
 return 0;
}
