
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct tvp514x_decoder {TYPE_1__* tvp514x_regs; } ;
struct TYPE_2__ {int val; } ;


 int EINVAL ;
 size_t REG_AFE_GAIN_CTRL ;
 size_t REG_BRIGHTNESS ;
 size_t REG_CONTRAST ;
 size_t REG_HUE ;
 size_t REG_SATURATION ;





 int debug ;
 struct tvp514x_decoder* to_decoder (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int) ;
 int v4l2_err (struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int
tvp514x_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct tvp514x_decoder *decoder = to_decoder(sd);

 if (ctrl == ((void*)0))
  return -EINVAL;

 switch (ctrl->id) {
 case 131:
  ctrl->value = decoder->tvp514x_regs[REG_BRIGHTNESS].val;
  break;
 case 130:
  ctrl->value = decoder->tvp514x_regs[REG_CONTRAST].val;
  break;
 case 128:
  ctrl->value = decoder->tvp514x_regs[REG_SATURATION].val;
  break;
 case 129:
  ctrl->value = decoder->tvp514x_regs[REG_HUE].val;
  if (ctrl->value == 0x7F)
   ctrl->value = 180;
  else if (ctrl->value == 0x80)
   ctrl->value = -180;
  else
   ctrl->value = 0;

  break;
 case 132:
  ctrl->value = decoder->tvp514x_regs[REG_AFE_GAIN_CTRL].val;
  if ((ctrl->value & 0x3) == 3)
   ctrl->value = 1;
  else
   ctrl->value = 0;

  break;
 default:
  v4l2_err(sd, "invalid control id %d\n", ctrl->id);
  return -EINVAL;
 }

 v4l2_dbg(1, debug, sd, "Get Control: ID - %d - %d",
   ctrl->id, ctrl->value);
 return 0;
}
