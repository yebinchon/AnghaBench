
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_crop {int type; int c; } ;
struct mt9v022 {int rect; } ;
struct i2c_client {int dummy; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v022_g_crop(struct v4l2_subdev *sd, struct v4l2_crop *a)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9v022 *mt9v022 = to_mt9v022(client);

 a->c = mt9v022->rect;
 a->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 return 0;
}
