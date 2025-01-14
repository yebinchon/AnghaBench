
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {unsigned long maximum; unsigned long minimum; unsigned long default_value; } ;
struct v4l2_control {int id; unsigned long value; } ;
struct TYPE_2__ {int const height; } ;
struct mt9t031 {unsigned long gain; int exposure; int autoexposure; int const y_skip_top; TYPE_1__ rect; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int EIO ;
 size_t MT9T031_CTRL_EXPOSURE ;
 size_t MT9T031_CTRL_GAIN ;
 int MT9T031_GLOBAL_GAIN ;
 int const MT9T031_MAX_HEIGHT ;
 int MT9T031_READ_MODE_2 ;
 int MT9T031_VERTICAL_BLANK ;





 int dev_dbg (int *,char*,int,...) ;
 int get_shutter (struct i2c_client*,int*) ;
 struct v4l2_queryctrl* mt9t031_controls ;
 int reg_clear (struct i2c_client*,int ,int) ;
 int reg_read (struct i2c_client*,int ) ;
 int reg_set (struct i2c_client*,int ,int) ;
 int reg_write (struct i2c_client*,int ,int) ;
 int set_shutter (struct i2c_client*,int const) ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t031_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t031 *mt9t031 = to_mt9t031(client);
 const struct v4l2_queryctrl *qctrl;
 int data;

 switch (ctrl->id) {
 case 128:
  if (ctrl->value)
   data = reg_set(client, MT9T031_READ_MODE_2, 0x8000);
  else
   data = reg_clear(client, MT9T031_READ_MODE_2, 0x8000);
  if (data < 0)
   return -EIO;
  break;
 case 129:
  if (ctrl->value)
   data = reg_set(client, MT9T031_READ_MODE_2, 0x4000);
  else
   data = reg_clear(client, MT9T031_READ_MODE_2, 0x4000);
  if (data < 0)
   return -EIO;
  break;
 case 130:
  qctrl = &mt9t031_controls[MT9T031_CTRL_GAIN];
  if (ctrl->value > qctrl->maximum || ctrl->value < qctrl->minimum)
   return -EINVAL;

  if (ctrl->value <= qctrl->default_value) {

   unsigned long range = qctrl->default_value - qctrl->minimum;
   data = ((ctrl->value - qctrl->minimum) * 8 + range / 2) / range;

   dev_dbg(&client->dev, "Setting gain %d\n", data);
   data = reg_write(client, MT9T031_GLOBAL_GAIN, data);
   if (data < 0)
    return -EIO;
  } else {


   unsigned long range = qctrl->maximum - qctrl->default_value - 1;

   unsigned long gain = ((ctrl->value - qctrl->default_value - 1) *
            1015 + range / 2) / range + 9;

   if (gain <= 32)
    data = gain;
   else if (gain <= 64)
    data = ((gain - 32) * 16 + 16) / 32 + 80;
   else

    data = (((gain - 64 + 7) * 32) & 0xff00) | 0x60;

   dev_dbg(&client->dev, "Set gain from 0x%x to 0x%x\n",
    reg_read(client, MT9T031_GLOBAL_GAIN), data);
   data = reg_write(client, MT9T031_GLOBAL_GAIN, data);
   if (data < 0)
    return -EIO;
  }


  mt9t031->gain = ctrl->value;
  break;
 case 132:
  qctrl = &mt9t031_controls[MT9T031_CTRL_EXPOSURE];

  if (ctrl->value > qctrl->maximum || ctrl->value < qctrl->minimum)
   return -EINVAL;
  else {
   const unsigned long range = qctrl->maximum - qctrl->minimum;
   const u32 shutter = ((ctrl->value - qctrl->minimum) * 1048 +
          range / 2) / range + 1;
   u32 old;

   get_shutter(client, &old);
   dev_dbg(&client->dev, "Set shutter from %u to %u\n",
    old, shutter);
   if (set_shutter(client, shutter) < 0)
    return -EIO;
   mt9t031->exposure = ctrl->value;
   mt9t031->autoexposure = 0;
  }
  break;
 case 131:
  if (ctrl->value) {
   const u16 vblank = MT9T031_VERTICAL_BLANK;
   const u32 shutter_max = MT9T031_MAX_HEIGHT + vblank;
   unsigned int total_h = mt9t031->rect.height +
    mt9t031->y_skip_top + vblank;

   if (set_shutter(client, total_h) < 0)
    return -EIO;
   qctrl = &mt9t031_controls[MT9T031_CTRL_EXPOSURE];
   mt9t031->exposure = (shutter_max / 2 + (total_h - 1) *
     (qctrl->maximum - qctrl->minimum)) /
    shutter_max + qctrl->minimum;
   mt9t031->autoexposure = 1;
  } else
   mt9t031->autoexposure = 0;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
