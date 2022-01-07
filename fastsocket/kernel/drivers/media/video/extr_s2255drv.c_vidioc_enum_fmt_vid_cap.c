
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fmtdesc {int index; int pixelformat; int description; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int fourcc; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int dprintk (int,char*,int ) ;
 TYPE_1__* formats ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
          struct v4l2_fmtdesc *f)
{
 int index = 0;
 if (f)
  index = f->index;

 if (index >= ARRAY_SIZE(formats))
  return -EINVAL;

 dprintk(4, "name %s\n", formats[index].name);
 strlcpy(f->description, formats[index].name, sizeof(f->description));
 f->pixelformat = formats[index].fourcc;
 return 0;
}
