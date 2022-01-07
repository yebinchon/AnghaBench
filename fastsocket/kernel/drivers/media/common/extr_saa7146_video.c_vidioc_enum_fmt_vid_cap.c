
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; scalar_t__ description; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int pixelformat; int name; } ;


 int EINVAL ;
 size_t NUM_FORMATS ;
 TYPE_1__* formats ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *fh, struct v4l2_fmtdesc *f)
{
 if (f->index >= NUM_FORMATS)
  return -EINVAL;
 strlcpy((char *)f->description, formats[f->index].name,
   sizeof(f->description));
 f->pixelformat = formats[f->index].pixelformat;
 return 0;
}
