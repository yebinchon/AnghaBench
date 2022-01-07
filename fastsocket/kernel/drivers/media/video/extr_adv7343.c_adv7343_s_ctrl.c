
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct adv7343_state {int gain; int hue; int bright; } ;


 int ADV7343_BRIGHTNESS_MAX ;
 int ADV7343_BRIGHTNESS_MIN ;
 int ADV7343_DAC2_OUTPUT_LEVEL ;
 int ADV7343_GAIN_MAX ;
 int ADV7343_GAIN_MIN ;
 int ADV7343_HUE_MAX ;
 int ADV7343_HUE_MIN ;
 int ADV7343_SD_BRIGHTNESS_WSS ;
 int ADV7343_SD_HUE_REG ;
 int EINVAL ;
 int ERANGE ;
 int NEGATIVE_GAIN_MIN ;
 int POSITIVE_GAIN_MAX ;



 int adv7343_write (struct v4l2_subdev*,int ,int ) ;
 int debug ;
 struct adv7343_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int adv7343_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct adv7343_state *state = to_state(sd);
 int err = 0;

 switch (ctrl->id) {
 case 130:
  if (ctrl->value < ADV7343_BRIGHTNESS_MIN ||
     ctrl->value > ADV7343_BRIGHTNESS_MAX) {
   v4l2_dbg(1, debug, sd,
     "invalid brightness settings %d\n",
        ctrl->value);
   return -ERANGE;
  }

  state->bright = ctrl->value;
  err = adv7343_write(sd, ADV7343_SD_BRIGHTNESS_WSS,
     state->bright);
  break;

 case 128:
  if (ctrl->value < ADV7343_HUE_MIN ||
     ctrl->value > ADV7343_HUE_MAX) {
   v4l2_dbg(1, debug, sd, "invalid hue settings %d\n",
        ctrl->value);
   return -ERANGE;
  }

  state->hue = ctrl->value;
  err = adv7343_write(sd, ADV7343_SD_HUE_REG, state->hue);
  break;

 case 129:
  if (ctrl->value < ADV7343_GAIN_MIN ||
     ctrl->value > ADV7343_GAIN_MAX) {
   v4l2_dbg(1, debug, sd, "invalid gain settings %d\n",
        ctrl->value);
   return -ERANGE;
  }

  if ((ctrl->value > POSITIVE_GAIN_MAX) &&
   (ctrl->value < NEGATIVE_GAIN_MIN)) {
   v4l2_dbg(1, debug, sd,
    "gain settings not within the specified range\n");
   return -ERANGE;
  }

  state->gain = ctrl->value;
  err = adv7343_write(sd, ADV7343_DAC2_OUTPUT_LEVEL, state->gain);
  break;

 default:
  return -EINVAL;
 }

 if (err < 0)
  v4l2_err(sd, "Failed to set the encoder controls\n");

 return err;
}
