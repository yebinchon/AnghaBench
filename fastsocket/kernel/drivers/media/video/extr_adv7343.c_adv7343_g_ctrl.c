
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct adv7343_state {int gain; int hue; int bright; } ;


 int EINVAL ;



 struct adv7343_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7343_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct adv7343_state *state = to_state(sd);

 switch (ctrl->id) {
 case 130:
  ctrl->value = state->bright;
  break;

 case 128:
  ctrl->value = state->hue;
  break;

 case 129:
  ctrl->value = state->gain;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
