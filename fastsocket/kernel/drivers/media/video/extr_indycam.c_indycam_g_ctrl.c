
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct indycam {int version; } ;
typedef int s32 ;


 int CAMERA_VERSION_MOOSE ;
 int EINVAL ;
 int EIO ;
 int INDYCAM_CONTROL_AGCENA ;
 int INDYCAM_CONTROL_AWBCTL ;


 int INDYCAM_GAMMA_DEFAULT ;
 int INDYCAM_REG_BLUE_BALANCE ;
 int INDYCAM_REG_BLUE_SATURATION ;
 int INDYCAM_REG_CONTROL ;
 int INDYCAM_REG_GAIN ;
 int INDYCAM_REG_GAMMA ;
 int INDYCAM_REG_RED_BALANCE ;
 int INDYCAM_REG_RED_SATURATION ;
 int INDYCAM_REG_SHUTTER ;







 int indycam_read_reg (struct v4l2_subdev*,int ,int*) ;
 struct indycam* to_indycam (struct v4l2_subdev*) ;

__attribute__((used)) static int indycam_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct indycam *camera = to_indycam(sd);
 u8 reg;
 int ret = 0;

 switch (ctrl->id) {
 case 134:
 case 133:
  ret = indycam_read_reg(sd, INDYCAM_REG_CONTROL, &reg);
  if (ret)
   return -EIO;
  if (ctrl->id == 134)
   ctrl->value = (reg & INDYCAM_CONTROL_AGCENA)
    ? 1 : 0;
  else
   ctrl->value = (reg & INDYCAM_CONTROL_AWBCTL)
    ? 1 : 0;
  break;
 case 131:
  ret = indycam_read_reg(sd, INDYCAM_REG_SHUTTER, &reg);
  if (ret)
   return -EIO;
  ctrl->value = ((s32)reg == 0x00) ? 0xff : ((s32)reg - 1);
  break;
 case 130:
  ret = indycam_read_reg(sd, INDYCAM_REG_GAIN, &reg);
  if (ret)
   return -EIO;
  ctrl->value = (s32)reg;
  break;
 case 128:
  ret = indycam_read_reg(sd, INDYCAM_REG_RED_BALANCE, &reg);
  if (ret)
   return -EIO;
  ctrl->value = (s32)reg;
  break;
 case 132:
  ret = indycam_read_reg(sd, INDYCAM_REG_BLUE_BALANCE, &reg);
  if (ret)
   return -EIO;
  ctrl->value = (s32)reg;
  break;
 case 135:
  ret = indycam_read_reg(sd,
           INDYCAM_REG_RED_SATURATION, &reg);
  if (ret)
   return -EIO;
  ctrl->value = (s32)reg;
  break;
 case 136:
  ret = indycam_read_reg(sd,
           INDYCAM_REG_BLUE_SATURATION, &reg);
  if (ret)
   return -EIO;
  ctrl->value = (s32)reg;
  break;
 case 129:
  if (camera->version == CAMERA_VERSION_MOOSE) {
   ret = indycam_read_reg(sd,
            INDYCAM_REG_GAMMA, &reg);
   if (ret)
    return -EIO;
   ctrl->value = (s32)reg;
  } else {
   ctrl->value = INDYCAM_GAMMA_DEFAULT;
  }
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
