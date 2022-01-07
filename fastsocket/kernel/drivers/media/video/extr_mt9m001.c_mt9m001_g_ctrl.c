
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct mt9m001 {int autoexposure; int gain; int exposure; } ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int MT9M001_READ_OPTIONS2 ;




 int reg_read (struct i2c_client*,int ) ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m001_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m001 *mt9m001 = to_mt9m001(client);
 int data;

 switch (ctrl->id) {
 case 128:
  data = reg_read(client, MT9M001_READ_OPTIONS2);
  if (data < 0)
   return -EIO;
  ctrl->value = !!(data & 0x8000);
  break;
 case 130:
  ctrl->value = mt9m001->autoexposure;
  break;
 case 129:
  ctrl->value = mt9m001->gain;
  break;
 case 131:
  ctrl->value = mt9m001->exposure;
  break;
 }
 return 0;
}
