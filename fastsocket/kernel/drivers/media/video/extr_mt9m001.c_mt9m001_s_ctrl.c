
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {unsigned long maximum; unsigned long minimum; unsigned long default_value; } ;
struct v4l2_control {int const id; unsigned long value; } ;
struct soc_camera_device {int * ops; } ;
struct TYPE_3__ {unsigned int const height; } ;
struct mt9m001 {unsigned long gain; int exposure; int autoexposure; unsigned int const y_skip_top; TYPE_1__ rect; } ;
struct TYPE_4__ {struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;


 int EINVAL ;
 int EIO ;
 int MT9M001_GLOBAL_GAIN ;
 int MT9M001_READ_OPTIONS2 ;
 int MT9M001_SHUTTER_WIDTH ;




 int dev_dbg (TYPE_2__*,char*,int,...) ;
 int mt9m001_ops ;
 int reg_clear (struct i2c_client*,int ,int) ;
 int reg_read (struct i2c_client*,int ) ;
 int reg_set (struct i2c_client*,int ,int) ;
 int reg_write (struct i2c_client*,int ,unsigned int) ;
 struct v4l2_queryctrl* soc_camera_find_qctrl (int *,int const) ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m001_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m001 *mt9m001 = to_mt9m001(client);
 struct soc_camera_device *icd = client->dev.platform_data;
 const struct v4l2_queryctrl *qctrl;
 int data;

 qctrl = soc_camera_find_qctrl(&mt9m001_ops, ctrl->id);

 if (!qctrl)
  return -EINVAL;

 switch (ctrl->id) {
 case 128:
  if (ctrl->value)
   data = reg_set(client, MT9M001_READ_OPTIONS2, 0x8000);
  else
   data = reg_clear(client, MT9M001_READ_OPTIONS2, 0x8000);
  if (data < 0)
   return -EIO;
  break;
 case 129:
  if (ctrl->value > qctrl->maximum || ctrl->value < qctrl->minimum)
   return -EINVAL;

  if (ctrl->value <= qctrl->default_value) {

   unsigned long range = qctrl->default_value - qctrl->minimum;
   data = ((ctrl->value - qctrl->minimum) * 8 + range / 2) / range;

   dev_dbg(&client->dev, "Setting gain %d\n", data);
   data = reg_write(client, MT9M001_GLOBAL_GAIN, data);
   if (data < 0)
    return -EIO;
  } else {


   unsigned long range = qctrl->maximum - qctrl->default_value - 1;
   unsigned long gain = ((ctrl->value - qctrl->default_value - 1) *
            111 + range / 2) / range + 9;

   if (gain <= 32)
    data = gain;
   else if (gain <= 64)
    data = ((gain - 32) * 16 + 16) / 32 + 80;
   else
    data = ((gain - 64) * 7 + 28) / 56 + 96;

   dev_dbg(&client->dev, "Setting gain from %d to %d\n",
     reg_read(client, MT9M001_GLOBAL_GAIN), data);
   data = reg_write(client, MT9M001_GLOBAL_GAIN, data);
   if (data < 0)
    return -EIO;
  }


  mt9m001->gain = ctrl->value;
  break;
 case 131:

  if (ctrl->value > qctrl->maximum || ctrl->value < qctrl->minimum)
   return -EINVAL;
  else {
   unsigned long range = qctrl->maximum - qctrl->minimum;
   unsigned long shutter = ((ctrl->value - qctrl->minimum) * 1048 +
       range / 2) / range + 1;

   dev_dbg(&client->dev,
    "Setting shutter width from %d to %lu\n",
    reg_read(client, MT9M001_SHUTTER_WIDTH),
    shutter);
   if (reg_write(client, MT9M001_SHUTTER_WIDTH, shutter) < 0)
    return -EIO;
   mt9m001->exposure = ctrl->value;
   mt9m001->autoexposure = 0;
  }
  break;
 case 130:
  if (ctrl->value) {
   const u16 vblank = 25;
   unsigned int total_h = mt9m001->rect.height +
    mt9m001->y_skip_top + vblank;
   if (reg_write(client, MT9M001_SHUTTER_WIDTH,
          total_h) < 0)
    return -EIO;
   qctrl = soc_camera_find_qctrl(icd->ops, 131);
   mt9m001->exposure = (524 + (total_h - 1) *
     (qctrl->maximum - qctrl->minimum)) /
    1048 + qctrl->minimum;
   mt9m001->autoexposure = 1;
  } else
   mt9m001->autoexposure = 0;
  break;
 }
 return 0;
}
