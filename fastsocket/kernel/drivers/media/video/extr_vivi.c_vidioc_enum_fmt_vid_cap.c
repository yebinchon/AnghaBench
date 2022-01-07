
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivi_fmt {int fourcc; int name; } ;
struct v4l2_fmtdesc {size_t index; int pixelformat; int description; } ;
struct file {int dummy; } ;


 size_t ARRAY_SIZE (struct vivi_fmt*) ;
 int EINVAL ;
 struct vivi_fmt* formats ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 struct vivi_fmt *fmt;

 if (f->index >= ARRAY_SIZE(formats))
  return -EINVAL;

 fmt = &formats[f->index];

 strlcpy(f->description, fmt->name, sizeof(f->description));
 f->pixelformat = fmt->fourcc;
 return 0;
}
