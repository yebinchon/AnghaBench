
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int code; int height; int width; } ;
struct mt9v022_datafmt {int colorspace; int code; } ;
struct mt9v022 {struct mt9v022_datafmt* fmt; int num_fmts; int fmts; scalar_t__ y_skip_top; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ MT9V022_MAX_HEIGHT ;
 int MT9V022_MAX_WIDTH ;
 scalar_t__ MT9V022_MIN_HEIGHT ;
 int MT9V022_MIN_WIDTH ;
 int V4L2_MBUS_FMT_SBGGR10_1X10 ;
 int V4L2_MBUS_FMT_SBGGR8_1X8 ;
 struct mt9v022_datafmt* mt9v022_find_datafmt (int ,int ,int ) ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l_bound_align_image (int *,int ,int ,int,int *,scalar_t__,scalar_t__,int,int ) ;

__attribute__((used)) static int mt9v022_try_fmt(struct v4l2_subdev *sd,
      struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9v022 *mt9v022 = to_mt9v022(client);
 const struct mt9v022_datafmt *fmt;
 int align = mf->code == V4L2_MBUS_FMT_SBGGR8_1X8 ||
  mf->code == V4L2_MBUS_FMT_SBGGR10_1X10;

 v4l_bound_align_image(&mf->width, MT9V022_MIN_WIDTH,
  MT9V022_MAX_WIDTH, align,
  &mf->height, MT9V022_MIN_HEIGHT + mt9v022->y_skip_top,
  MT9V022_MAX_HEIGHT + mt9v022->y_skip_top, align, 0);

 fmt = mt9v022_find_datafmt(mf->code, mt9v022->fmts,
       mt9v022->num_fmts);
 if (!fmt) {
  fmt = mt9v022->fmt;
  mf->code = fmt->code;
 }

 mf->colorspace = fmt->colorspace;

 return 0;
}
