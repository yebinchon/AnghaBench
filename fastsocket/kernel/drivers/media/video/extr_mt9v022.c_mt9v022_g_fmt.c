
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct TYPE_4__ {int height; int width; } ;
struct mt9v022 {TYPE_1__* fmt; TYPE_2__ rect; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int colorspace; int code; } ;


 int V4L2_FIELD_NONE ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v022_g_fmt(struct v4l2_subdev *sd,
    struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9v022 *mt9v022 = to_mt9v022(client);

 mf->width = mt9v022->rect.width;
 mf->height = mt9v022->rect.height;
 mf->code = mt9v022->fmt->code;
 mf->colorspace = mt9v022->fmt->colorspace;
 mf->field = V4L2_FIELD_NONE;

 return 0;
}
