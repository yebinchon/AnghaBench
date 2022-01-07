
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int pixelformat; scalar_t__ flags; int description; int type; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_PIX_FMT_UYVY ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 if (f->index)
  return -EINVAL;

 f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 strcpy(f->description, "Packed YUV2");

 f->flags = 0;
 f->pixelformat = V4L2_PIX_FMT_UYVY;

 return 0;
}
