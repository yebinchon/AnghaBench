
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {scalar_t__ index; scalar_t__ type; int pixelformat; int description; int flags; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FMT_FLAG_COMPRESSED ;
 int V4L2_PIX_FMT_MPEG ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *private_data,
        struct v4l2_fmtdesc *f)
{

 if (f->index != 0 || f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 f->flags = V4L2_FMT_FLAG_COMPRESSED;
 strncpy(f->description, "MPEG2-TS with AVC/AAC streams", 32);
 f->pixelformat = V4L2_PIX_FMT_MPEG;

 return 0;
}
