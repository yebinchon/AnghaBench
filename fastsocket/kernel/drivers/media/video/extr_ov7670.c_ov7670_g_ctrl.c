
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;


 int EINVAL ;
 int ov7670_g_autoexp (struct v4l2_subdev*,int *) ;
 int ov7670_g_autogain (struct v4l2_subdev*,int *) ;
 int ov7670_g_brightness (struct v4l2_subdev*,int *) ;
 int ov7670_g_contrast (struct v4l2_subdev*,int *) ;
 int ov7670_g_exp (struct v4l2_subdev*,int *) ;
 int ov7670_g_gain (struct v4l2_subdev*,int *) ;
 int ov7670_g_hflip (struct v4l2_subdev*,int *) ;
 int ov7670_g_hue (struct v4l2_subdev*,int *) ;
 int ov7670_g_sat (struct v4l2_subdev*,int *) ;
 int ov7670_g_vflip (struct v4l2_subdev*,int *) ;

__attribute__((used)) static int ov7670_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 switch (ctrl->id) {
 case 136:
  return ov7670_g_brightness(sd, &ctrl->value);
 case 135:
  return ov7670_g_contrast(sd, &ctrl->value);
 case 129:
  return ov7670_g_sat(sd, &ctrl->value);
 case 130:
  return ov7670_g_hue(sd, &ctrl->value);
 case 128:
  return ov7670_g_vflip(sd, &ctrl->value);
 case 131:
  return ov7670_g_hflip(sd, &ctrl->value);
 case 132:
  return ov7670_g_gain(sd, &ctrl->value);
 case 137:
  return ov7670_g_autogain(sd, &ctrl->value);
 case 134:
  return ov7670_g_exp(sd, &ctrl->value);
 case 133:
  return ov7670_g_autoexp(sd, &ctrl->value);
 }
 return -EINVAL;
}
