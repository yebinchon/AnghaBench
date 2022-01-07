
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct v4l2_pix_format {int pixelformat; int colorspace; int sizeimage; int bytesperline; int field; int height; int width; } ;


 int dbgarg2 (char*,int ,int ,int,int,int,int,int ,int ,int ,int ) ;
 int prt_names (int ,int ) ;
 int v4l2_field_names ;

__attribute__((used)) static inline void v4l_print_pix_fmt(struct video_device *vfd,
      struct v4l2_pix_format *fmt)
{
 dbgarg2("width=%d, height=%d, format=%c%c%c%c, field=%s, "
  "bytesperline=%d sizeimage=%d, colorspace=%d\n",
  fmt->width, fmt->height,
  (fmt->pixelformat & 0xff),
  (fmt->pixelformat >> 8) & 0xff,
  (fmt->pixelformat >> 16) & 0xff,
  (fmt->pixelformat >> 24) & 0xff,
  prt_names(fmt->field, v4l2_field_names),
  fmt->bytesperline, fmt->sizeimage, fmt->colorspace);
}
