
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int field; unsigned int height; int width; int bytesperline; int sizeimage; int pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct cx88_core {int tvnorm; } ;
struct cx8800_fmt {int depth; } ;
struct cx8800_fh {TYPE_1__* dev; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_4__ {struct cx88_core* core; } ;


 int EINVAL ;
 int V4L2_FIELD_ANY ;



 struct cx8800_fmt* format_by_fourcc (int ) ;
 unsigned int norm_maxh (int ) ;
 unsigned int norm_maxw (int ) ;
 int v4l_bound_align_image (int*,int,unsigned int,int,unsigned int*,int,unsigned int,int ,int ) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
   struct v4l2_format *f)
{
 struct cx88_core *core = ((struct cx8800_fh *)priv)->dev->core;
 struct cx8800_fmt *fmt;
 enum v4l2_field field;
 unsigned int maxw, maxh;

 fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 if (((void*)0) == fmt)
  return -EINVAL;

 field = f->fmt.pix.field;
 maxw = norm_maxw(core->tvnorm);
 maxh = norm_maxh(core->tvnorm);

 if (V4L2_FIELD_ANY == field) {
  field = (f->fmt.pix.height > maxh/2)
   ? 129
   : 130;
 }

 switch (field) {
 case 128:
 case 130:
  maxh = maxh / 2;
  break;
 case 129:
  break;
 default:
  return -EINVAL;
 }

 f->fmt.pix.field = field;
 v4l_bound_align_image(&f->fmt.pix.width, 48, maxw, 2,
         &f->fmt.pix.height, 32, maxh, 0, 0);
 f->fmt.pix.bytesperline =
  (f->fmt.pix.width * fmt->depth) >> 3;
 f->fmt.pix.sizeimage =
  f->fmt.pix.height * f->fmt.pix.bytesperline;

 return 0;
}
