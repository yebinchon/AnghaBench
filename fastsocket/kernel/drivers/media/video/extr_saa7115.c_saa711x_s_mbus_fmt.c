
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int height; int width; int colorspace; int field; } ;


 int EINVAL ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_MBUS_FMT_FIXED ;
 int saa711x_set_size (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int saa711x_s_mbus_fmt(struct v4l2_subdev *sd, struct v4l2_mbus_framefmt *fmt)
{
 if (fmt->code != V4L2_MBUS_FMT_FIXED)
  return -EINVAL;
 fmt->field = V4L2_FIELD_INTERLACED;
 fmt->colorspace = V4L2_COLORSPACE_SMPTE170M;
 return saa711x_set_size(sd, fmt->width, fmt->height);
}
