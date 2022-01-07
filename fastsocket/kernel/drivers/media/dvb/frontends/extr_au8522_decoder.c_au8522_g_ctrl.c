
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct au8522_state {int hue; int saturation; int contrast; int brightness; } ;


 int EINVAL ;
 struct au8522_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int au8522_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct au8522_state *state = to_state(sd);





 switch (ctrl->id) {
 case 131:
  ctrl->value = state->brightness;
  break;
 case 130:
  ctrl->value = state->contrast;
  break;
 case 128:
  ctrl->value = state->saturation;
  break;
 case 129:
  ctrl->value = state->hue;
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
