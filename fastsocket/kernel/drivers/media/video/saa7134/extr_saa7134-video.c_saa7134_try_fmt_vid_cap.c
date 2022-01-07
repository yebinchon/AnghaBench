
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int field; unsigned int height; int width; int bytesperline; int sizeimage; int pixelformat; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; } ;
struct saa7134_format {int depth; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_5__ {int width; int height; } ;
struct saa7134_dev {TYPE_2__ crop_bounds; TYPE_1__ crop_current; } ;
struct file {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EINVAL ;
 int V4L2_FIELD_ANY ;



 struct saa7134_format* format_by_fourcc (int ) ;
 unsigned int min (int,int ) ;

__attribute__((used)) static int saa7134_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct saa7134_fh *fh = priv;
 struct saa7134_dev *dev = fh->dev;
 struct saa7134_format *fmt;
 enum v4l2_field field;
 unsigned int maxw, maxh;

 fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 if (((void*)0) == fmt)
  return -EINVAL;

 field = f->fmt.pix.field;
 maxw = min(dev->crop_current.width*4, dev->crop_bounds.width);
 maxh = min(dev->crop_current.height*4, dev->crop_bounds.height);

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
 if (f->fmt.pix.width < 48)
  f->fmt.pix.width = 48;
 if (f->fmt.pix.height < 32)
  f->fmt.pix.height = 32;
 if (f->fmt.pix.width > maxw)
  f->fmt.pix.width = maxw;
 if (f->fmt.pix.height > maxh)
  f->fmt.pix.height = maxh;
 f->fmt.pix.width &= ~0x03;
 f->fmt.pix.bytesperline =
  (f->fmt.pix.width * fmt->depth) >> 3;
 f->fmt.pix.sizeimage =
  f->fmt.pix.height * f->fmt.pix.bytesperline;

 return 0;
}
