
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; int description; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int pixelformat; int desc; } ;


 int EINVAL ;
 size_t N_CAFE_FMTS ;
 TYPE_1__* cafe_formats ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int cafe_vidioc_enum_fmt_vid_cap(struct file *filp,
  void *priv, struct v4l2_fmtdesc *fmt)
{
 if (fmt->index >= N_CAFE_FMTS)
  return -EINVAL;
 strlcpy(fmt->description, cafe_formats[fmt->index].desc,
   sizeof(fmt->description));
 fmt->pixelformat = cafe_formats[fmt->index].pixelformat;
 return 0;
}
