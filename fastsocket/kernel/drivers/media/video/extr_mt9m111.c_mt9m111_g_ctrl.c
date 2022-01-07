
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct mt9m111 {int autoexposure; int autowhitebalance; int context; } ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int HIGHPOWER ;
 int MT9M111_RMB_MIRROR_COLS ;
 int MT9M111_RMB_MIRROR_ROWS ;
 int READ_MODE_A ;
 int READ_MODE_B ;





 int mt9m111_get_global_gain (struct i2c_client*) ;
 int reg_read (int ) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m111_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m111 *mt9m111 = to_mt9m111(client);
 int data;

 switch (ctrl->id) {
 case 128:
  if (mt9m111->context == HIGHPOWER)
   data = reg_read(READ_MODE_B);
  else
   data = reg_read(READ_MODE_A);

  if (data < 0)
   return -EIO;
  ctrl->value = !!(data & MT9M111_RMB_MIRROR_ROWS);
  break;
 case 129:
  if (mt9m111->context == HIGHPOWER)
   data = reg_read(READ_MODE_B);
  else
   data = reg_read(READ_MODE_A);

  if (data < 0)
   return -EIO;
  ctrl->value = !!(data & MT9M111_RMB_MIRROR_COLS);
  break;
 case 130:
  data = mt9m111_get_global_gain(client);
  if (data < 0)
   return data;
  ctrl->value = data;
  break;
 case 131:
  ctrl->value = mt9m111->autoexposure;
  break;
 case 132:
  ctrl->value = mt9m111->autowhitebalance;
  break;
 }
 return 0;
}
