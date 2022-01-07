
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int description; int pixelformat; scalar_t__ flags; int type; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int name; int fourcc; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 TYPE_1__* poseidon_formats ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int vidioc_enum_fmt(struct file *file, void *fh,
    struct v4l2_fmtdesc *f)
{
 if (ARRAY_SIZE(poseidon_formats) <= f->index)
  return -EINVAL;
 f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 f->flags = 0;
 f->pixelformat = poseidon_formats[f->index].fourcc;
 strcpy(f->description, poseidon_formats[f->index].name);
 return 0;
}
