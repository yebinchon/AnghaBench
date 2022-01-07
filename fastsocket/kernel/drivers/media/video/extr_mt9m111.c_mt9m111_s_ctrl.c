
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct mt9m111 {int hflip; int vflip; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int MT9M111_RMB_MIRROR_COLS ;
 int MT9M111_RMB_MIRROR_ROWS ;





 int mt9m111_ops ;
 int mt9m111_set_autoexposure (struct i2c_client*,int ) ;
 int mt9m111_set_autowhitebalance (struct i2c_client*,int ) ;
 int mt9m111_set_flip (struct i2c_client*,int ,int ) ;
 int mt9m111_set_global_gain (struct i2c_client*,int ) ;
 struct v4l2_queryctrl* soc_camera_find_qctrl (int *,int) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m111_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m111 *mt9m111 = to_mt9m111(client);
 const struct v4l2_queryctrl *qctrl;
 int ret;

 qctrl = soc_camera_find_qctrl(&mt9m111_ops, ctrl->id);
 if (!qctrl)
  return -EINVAL;

 switch (ctrl->id) {
 case 128:
  mt9m111->vflip = ctrl->value;
  ret = mt9m111_set_flip(client, ctrl->value,
     MT9M111_RMB_MIRROR_ROWS);
  break;
 case 129:
  mt9m111->hflip = ctrl->value;
  ret = mt9m111_set_flip(client, ctrl->value,
     MT9M111_RMB_MIRROR_COLS);
  break;
 case 130:
  ret = mt9m111_set_global_gain(client, ctrl->value);
  break;
 case 131:
  ret = mt9m111_set_autoexposure(client, ctrl->value);
  break;
 case 132:
  ret = mt9m111_set_autowhitebalance(client, ctrl->value);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
