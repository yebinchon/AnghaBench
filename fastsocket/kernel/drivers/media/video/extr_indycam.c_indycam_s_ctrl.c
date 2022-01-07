
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct indycam {int version; } ;


 int CAMERA_VERSION_MOOSE ;
 int EINVAL ;
 int INDYCAM_CONTROL_AGCENA ;
 int INDYCAM_CONTROL_AWBCTL ;


 int INDYCAM_REG_BLUE_BALANCE ;
 int INDYCAM_REG_BLUE_SATURATION ;
 int INDYCAM_REG_CONTROL ;
 int INDYCAM_REG_GAIN ;
 int INDYCAM_REG_GAMMA ;
 int INDYCAM_REG_RED_BALANCE ;
 int INDYCAM_REG_RED_SATURATION ;
 int INDYCAM_REG_SHUTTER ;







 int indycam_read_reg (struct v4l2_subdev*,int ,int*) ;
 int indycam_write_reg (struct v4l2_subdev*,int ,int) ;
 struct indycam* to_indycam (struct v4l2_subdev*) ;

__attribute__((used)) static int indycam_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct indycam *camera = to_indycam(sd);
 u8 reg;
 int ret = 0;

 switch (ctrl->id) {
 case 134:
 case 133:
  ret = indycam_read_reg(sd, INDYCAM_REG_CONTROL, &reg);
  if (ret)
   break;

  if (ctrl->id == 134) {
   if (ctrl->value)
    reg |= INDYCAM_CONTROL_AGCENA;
   else
    reg &= ~INDYCAM_CONTROL_AGCENA;
  } else {
   if (ctrl->value)
    reg |= INDYCAM_CONTROL_AWBCTL;
   else
    reg &= ~INDYCAM_CONTROL_AWBCTL;
  }

  ret = indycam_write_reg(sd, INDYCAM_REG_CONTROL, reg);
  break;
 case 131:
  reg = (ctrl->value == 0xff) ? 0x00 : (ctrl->value + 1);
  ret = indycam_write_reg(sd, INDYCAM_REG_SHUTTER, reg);
  break;
 case 130:
  ret = indycam_write_reg(sd, INDYCAM_REG_GAIN, ctrl->value);
  break;
 case 128:
  ret = indycam_write_reg(sd, INDYCAM_REG_RED_BALANCE,
     ctrl->value);
  break;
 case 132:
  ret = indycam_write_reg(sd, INDYCAM_REG_BLUE_BALANCE,
     ctrl->value);
  break;
 case 135:
  ret = indycam_write_reg(sd, INDYCAM_REG_RED_SATURATION,
     ctrl->value);
  break;
 case 136:
  ret = indycam_write_reg(sd, INDYCAM_REG_BLUE_SATURATION,
     ctrl->value);
  break;
 case 129:
  if (camera->version == CAMERA_VERSION_MOOSE) {
   ret = indycam_write_reg(sd, INDYCAM_REG_GAMMA,
      ctrl->value);
  }
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
