
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {scalar_t__ index; int pixelformat; int description; int flags; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int fourcc; int name; } ;


 int EINVAL ;
 int V4L2_FMT_FLAG_COMPRESSED ;
 TYPE_1__* formats ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int zr364xx_vidioc_enum_fmt_vid_cap(struct file *file,
           void *priv, struct v4l2_fmtdesc *f)
{
 if (f->index > 0)
  return -EINVAL;
 f->flags = V4L2_FMT_FLAG_COMPRESSED;
 strcpy(f->description, formats[0].name);
 f->pixelformat = formats[0].fourcc;
 return 0;
}
