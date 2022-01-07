
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int colorspace; int field; int height; int width; } ;


 int EINVAL ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_MBUS_FMT_SGRBG8_1X8 ;
 int v4l_bound_align_image (int *,int,int,int,int *,int,int,int,int ) ;

__attribute__((used)) static int mt9v011_try_mbus_fmt(struct v4l2_subdev *sd, struct v4l2_mbus_framefmt *fmt)
{
 if (fmt->code != V4L2_MBUS_FMT_SGRBG8_1X8)
  return -EINVAL;

 v4l_bound_align_image(&fmt->width, 48, 639, 1,
         &fmt->height, 32, 480, 1, 0);
 fmt->field = V4L2_FIELD_NONE;
 fmt->colorspace = V4L2_COLORSPACE_SRGB;

 return 0;
}
