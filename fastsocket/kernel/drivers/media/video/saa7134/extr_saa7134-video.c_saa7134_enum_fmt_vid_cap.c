
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; int description; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int fourcc; int name; } ;


 int EINVAL ;
 size_t FORMATS ;
 TYPE_1__* formats ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int saa7134_enum_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 if (f->index >= FORMATS)
  return -EINVAL;

 strlcpy(f->description, formats[f->index].name,
  sizeof(f->description));

 f->pixelformat = formats[f->index].fourcc;

 return 0;
}
