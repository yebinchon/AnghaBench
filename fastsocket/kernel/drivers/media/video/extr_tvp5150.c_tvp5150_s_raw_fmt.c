
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_vbi_format {scalar_t__ sample_format; int* count; } ;
struct v4l2_subdev {int dummy; } ;


 int TVP5150_LUMA_PROC_CTL_1 ;
 int TVP5150_VERT_BLANKING_START ;
 int TVP5150_VERT_BLANKING_STOP ;
 scalar_t__ V4L2_PIX_FMT_GREY ;
 int tvp5150_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int tvp5150_s_raw_fmt(struct v4l2_subdev *sd, struct v4l2_vbi_format *fmt)
{





 if (fmt->sample_format == V4L2_PIX_FMT_GREY)
  tvp5150_write(sd, TVP5150_LUMA_PROC_CTL_1, 0x70);
 if (fmt->count[0] == 18 && fmt->count[1] == 18) {
  tvp5150_write(sd, TVP5150_VERT_BLANKING_START, 0x00);
  tvp5150_write(sd, TVP5150_VERT_BLANKING_STOP, 0x01);
 }
 return 0;
}
