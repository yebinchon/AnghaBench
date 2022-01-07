
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
typedef enum v4l2_exposure_auto_type { ____Placeholder_v4l2_exposure_auto_type } v4l2_exposure_auto_type ;


 int EINVAL ;
 int ov7670_s_autoexp (struct v4l2_subdev*,int) ;
 int ov7670_s_autogain (struct v4l2_subdev*,int ) ;
 int ov7670_s_brightness (struct v4l2_subdev*,int ) ;
 int ov7670_s_contrast (struct v4l2_subdev*,int ) ;
 int ov7670_s_exp (struct v4l2_subdev*,int ) ;
 int ov7670_s_gain (struct v4l2_subdev*,int ) ;
 int ov7670_s_hflip (struct v4l2_subdev*,int ) ;
 int ov7670_s_hue (struct v4l2_subdev*,int ) ;
 int ov7670_s_sat (struct v4l2_subdev*,int ) ;
 int ov7670_s_vflip (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int ov7670_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 switch (ctrl->id) {
 case 136:
  return ov7670_s_brightness(sd, ctrl->value);
 case 135:
  return ov7670_s_contrast(sd, ctrl->value);
 case 129:
  return ov7670_s_sat(sd, ctrl->value);
 case 130:
  return ov7670_s_hue(sd, ctrl->value);
 case 128:
  return ov7670_s_vflip(sd, ctrl->value);
 case 131:
  return ov7670_s_hflip(sd, ctrl->value);
 case 132:
  return ov7670_s_gain(sd, ctrl->value);
 case 137:
  return ov7670_s_autogain(sd, ctrl->value);
 case 134:
  return ov7670_s_exp(sd, ctrl->value);
 case 133:
  return ov7670_s_autoexp(sd,
    (enum v4l2_exposure_auto_type) ctrl->value);
 }
 return -EINVAL;
}
