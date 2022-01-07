
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int width; int height; int field; int colorspace; int code; } ;
struct TYPE_2__ {int width; int height; } ;
struct mt9t031 {int xskip; int yskip; TYPE_1__ rect; } ;
struct i2c_client {int dummy; } ;


 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_MBUS_FMT_SBGGR10_1X10 ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t031_g_fmt(struct v4l2_subdev *sd,
    struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t031 *mt9t031 = to_mt9t031(client);

 mf->width = mt9t031->rect.width / mt9t031->xskip;
 mf->height = mt9t031->rect.height / mt9t031->yskip;
 mf->code = V4L2_MBUS_FMT_SBGGR10_1X10;
 mf->colorspace = V4L2_COLORSPACE_SRGB;
 mf->field = V4L2_FIELD_NONE;

 return 0;
}
