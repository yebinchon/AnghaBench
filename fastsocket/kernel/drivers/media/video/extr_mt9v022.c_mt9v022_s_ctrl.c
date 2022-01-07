
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {unsigned long maximum; unsigned long minimum; } ;
struct v4l2_control {int id; unsigned long value; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int EIO ;
 int MT9V022_AEC_AGC_ENABLE ;
 int MT9V022_ANALOG_GAIN ;
 int MT9V022_READ_MODE ;
 int MT9V022_TOTAL_SHUTTER_WIDTH ;






 int dev_dbg (int *,char*,int ,unsigned long) ;
 int mt9v022_ops ;
 int reg_clear (struct i2c_client*,int ,int) ;
 int reg_read (struct i2c_client*,int ) ;
 int reg_set (struct i2c_client*,int ,int) ;
 int reg_write (struct i2c_client*,int ,unsigned long) ;
 struct v4l2_queryctrl* soc_camera_find_qctrl (int *,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v022_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 int data;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 const struct v4l2_queryctrl *qctrl;

 qctrl = soc_camera_find_qctrl(&mt9v022_ops, ctrl->id);
 if (!qctrl)
  return -EINVAL;

 switch (ctrl->id) {
 case 128:
  if (ctrl->value)
   data = reg_set(client, MT9V022_READ_MODE, 0x10);
  else
   data = reg_clear(client, MT9V022_READ_MODE, 0x10);
  if (data < 0)
   return -EIO;
  break;
 case 129:
  if (ctrl->value)
   data = reg_set(client, MT9V022_READ_MODE, 0x20);
  else
   data = reg_clear(client, MT9V022_READ_MODE, 0x20);
  if (data < 0)
   return -EIO;
  break;
 case 130:

  if (ctrl->value > qctrl->maximum || ctrl->value < qctrl->minimum)
   return -EINVAL;
  else {
   unsigned long range = qctrl->maximum - qctrl->minimum;

   unsigned long gain = ((ctrl->value - qctrl->minimum) *
           48 + range / 2) / range + 16;
   if (gain >= 32)
    gain &= ~1;





   if (reg_clear(client, MT9V022_AEC_AGC_ENABLE, 0x2) < 0)
    return -EIO;

   dev_dbg(&client->dev, "Setting gain from %d to %lu\n",
    reg_read(client, MT9V022_ANALOG_GAIN), gain);
   if (reg_write(client, MT9V022_ANALOG_GAIN, gain) < 0)
    return -EIO;
  }
  break;
 case 132:

  if (ctrl->value > qctrl->maximum || ctrl->value < qctrl->minimum)
   return -EINVAL;
  else {
   unsigned long range = qctrl->maximum - qctrl->minimum;
   unsigned long shutter = ((ctrl->value - qctrl->minimum) *
       479 + range / 2) / range + 1;





   if (reg_clear(client, MT9V022_AEC_AGC_ENABLE, 0x1) < 0)
    return -EIO;

   dev_dbg(&client->dev, "Shutter width from %d to %lu\n",
    reg_read(client, MT9V022_TOTAL_SHUTTER_WIDTH),
    shutter);
   if (reg_write(client, MT9V022_TOTAL_SHUTTER_WIDTH,
          shutter) < 0)
    return -EIO;
  }
  break;
 case 133:
  if (ctrl->value)
   data = reg_set(client, MT9V022_AEC_AGC_ENABLE, 0x2);
  else
   data = reg_clear(client, MT9V022_AEC_AGC_ENABLE, 0x2);
  if (data < 0)
   return -EIO;
  break;
 case 131:
  if (ctrl->value)
   data = reg_set(client, MT9V022_AEC_AGC_ENABLE, 0x1);
  else
   data = reg_clear(client, MT9V022_AEC_AGC_ENABLE, 0x1);
  if (data < 0)
   return -EIO;
  break;
 }
 return 0;
}
