
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; } ;
struct v4l2_mbus_framefmt {int colorspace; int code; int height; int width; } ;
struct mt9t031 {struct v4l2_rect rect; } ;
struct i2c_client {int dummy; } ;


 int MT9T031_MAX_HEIGHT ;
 int MT9T031_MAX_WIDTH ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_MBUS_FMT_SBGGR10_1X10 ;
 int mt9t031_set_params (struct i2c_client*,struct v4l2_rect*,int ,int ) ;
 int mt9t031_skip (int *,int ,int ) ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t031_s_fmt(struct v4l2_subdev *sd,
    struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t031 *mt9t031 = to_mt9t031(client);
 u16 xskip, yskip;
 struct v4l2_rect rect = mt9t031->rect;





 xskip = mt9t031_skip(&rect.width, mf->width, MT9T031_MAX_WIDTH);
 yskip = mt9t031_skip(&rect.height, mf->height, MT9T031_MAX_HEIGHT);

 mf->code = V4L2_MBUS_FMT_SBGGR10_1X10;
 mf->colorspace = V4L2_COLORSPACE_SRGB;


 return mt9t031_set_params(client, &rect, xskip, yskip);
}
