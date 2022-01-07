
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int code; int height; int width; } ;


 int MT9T031_MAX_HEIGHT ;
 int MT9T031_MAX_WIDTH ;
 int MT9T031_MIN_HEIGHT ;
 int MT9T031_MIN_WIDTH ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_MBUS_FMT_SBGGR10_1X10 ;
 int v4l_bound_align_image (int *,int ,int ,int,int *,int ,int ,int,int ) ;

__attribute__((used)) static int mt9t031_try_fmt(struct v4l2_subdev *sd,
      struct v4l2_mbus_framefmt *mf)
{
 v4l_bound_align_image(
  &mf->width, MT9T031_MIN_WIDTH, MT9T031_MAX_WIDTH, 1,
  &mf->height, MT9T031_MIN_HEIGHT, MT9T031_MAX_HEIGHT, 1, 0);

 mf->code = V4L2_MBUS_FMT_SBGGR10_1X10;
 mf->colorspace = V4L2_COLORSPACE_SRGB;

 return 0;
}
