
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int index; int description; int pixelformat; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_RGB565 ;
 int V4L2_PIX_FMT_RGB565X ;
 int V4L2_PIX_FMT_SBGGR8 ;
 int V4L2_PIX_FMT_UYVY ;
 int V4L2_PIX_FMT_YUYV ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int stk_vidioc_enum_fmt_vid_cap(struct file *filp,
  void *priv, struct v4l2_fmtdesc *fmtd)
{
 switch (fmtd->index) {
 case 0:
  fmtd->pixelformat = V4L2_PIX_FMT_RGB565;
  strcpy(fmtd->description, "r5g6b5");
  break;
 case 1:
  fmtd->pixelformat = V4L2_PIX_FMT_RGB565X;
  strcpy(fmtd->description, "r5g6b5BE");
  break;
 case 2:
  fmtd->pixelformat = V4L2_PIX_FMT_UYVY;
  strcpy(fmtd->description, "yuv4:2:2");
  break;
 case 3:
  fmtd->pixelformat = V4L2_PIX_FMT_SBGGR8;
  strcpy(fmtd->description, "Raw bayer");
  break;
 case 4:
  fmtd->pixelformat = V4L2_PIX_FMT_YUYV;
  strcpy(fmtd->description, "yuv4:2:2");
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
