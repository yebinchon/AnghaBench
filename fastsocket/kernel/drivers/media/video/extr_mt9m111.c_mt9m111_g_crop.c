
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_crop {int type; int c; } ;
struct mt9m111 {int rect; } ;
struct i2c_client {int dummy; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m111_g_crop(struct v4l2_subdev *sd, struct v4l2_crop *a)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m111 *mt9m111 = to_mt9m111(client);

 a->c = mt9m111->rect;
 a->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 return 0;
}
