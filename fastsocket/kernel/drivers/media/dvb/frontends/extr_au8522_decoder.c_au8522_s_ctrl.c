
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct au8522_state {int brightness; int contrast; int saturation; int hue; } ;


 int AU8522_TVDEC_BRIGHTNESS_REG00AH ;
 int AU8522_TVDEC_CONTRAST_REG00BH ;
 int AU8522_TVDEC_HUE_H_REG00EH ;
 int AU8522_TVDEC_HUE_L_REG00FH ;
 int AU8522_TVDEC_SATURATION_CB_REG00CH ;
 int AU8522_TVDEC_SATURATION_CR_REG00DH ;
 int EINVAL ;
 int au8522_writereg (struct au8522_state*,int ,int) ;
 struct au8522_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int au8522_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct au8522_state *state = to_state(sd);

 switch (ctrl->id) {
 case 131:
  state->brightness = ctrl->value;
  au8522_writereg(state, AU8522_TVDEC_BRIGHTNESS_REG00AH,
    ctrl->value - 128);
  break;
 case 130:
  state->contrast = ctrl->value;
  au8522_writereg(state, AU8522_TVDEC_CONTRAST_REG00BH,
    ctrl->value);
  break;
 case 128:
  state->saturation = ctrl->value;
  au8522_writereg(state, AU8522_TVDEC_SATURATION_CB_REG00CH,
    ctrl->value);
  au8522_writereg(state, AU8522_TVDEC_SATURATION_CR_REG00DH,
    ctrl->value);
  break;
 case 129:
  state->hue = ctrl->value;
  au8522_writereg(state, AU8522_TVDEC_HUE_H_REG00EH,
    ctrl->value >> 8);
  au8522_writereg(state, AU8522_TVDEC_HUE_L_REG00FH,
    ctrl->value & 0xFF);
  break;
 case 132:
 case 135:
 case 133:
 case 136:
 case 134:

 default:
  return -EINVAL;
 }

 return 0;
}
