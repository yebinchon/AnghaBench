
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {unsigned long maximum; unsigned long minimum; } ;
struct v4l2_control {int id; int value; } ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int MT9V022_AEC_AGC_ENABLE ;
 int MT9V022_ANALOG_GAIN ;
 int MT9V022_READ_MODE ;
 int MT9V022_TOTAL_SHUTTER_WIDTH ;






 int mt9v022_ops ;
 int reg_read (struct i2c_client*,int ) ;
 struct v4l2_queryctrl* soc_camera_find_qctrl (int *,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v022_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 const struct v4l2_queryctrl *qctrl;
 unsigned long range;
 int data;

 qctrl = soc_camera_find_qctrl(&mt9v022_ops, ctrl->id);

 switch (ctrl->id) {
 case 128:
  data = reg_read(client, MT9V022_READ_MODE);
  if (data < 0)
   return -EIO;
  ctrl->value = !!(data & 0x10);
  break;
 case 129:
  data = reg_read(client, MT9V022_READ_MODE);
  if (data < 0)
   return -EIO;
  ctrl->value = !!(data & 0x20);
  break;
 case 131:
  data = reg_read(client, MT9V022_AEC_AGC_ENABLE);
  if (data < 0)
   return -EIO;
  ctrl->value = !!(data & 0x1);
  break;
 case 133:
  data = reg_read(client, MT9V022_AEC_AGC_ENABLE);
  if (data < 0)
   return -EIO;
  ctrl->value = !!(data & 0x2);
  break;
 case 130:
  data = reg_read(client, MT9V022_ANALOG_GAIN);
  if (data < 0)
   return -EIO;

  range = qctrl->maximum - qctrl->minimum;
  ctrl->value = ((data - 16) * range + 24) / 48 + qctrl->minimum;

  break;
 case 132:
  data = reg_read(client, MT9V022_TOTAL_SHUTTER_WIDTH);
  if (data < 0)
   return -EIO;

  range = qctrl->maximum - qctrl->minimum;
  ctrl->value = ((data - 1) * range + 239) / 479 + qctrl->minimum;

  break;
 }
 return 0;
}
