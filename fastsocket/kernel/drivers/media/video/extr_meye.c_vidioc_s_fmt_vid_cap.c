
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pixelformat; scalar_t__ field; int width; int height; int bytesperline; int sizeimage; scalar_t__ priv; scalar_t__ colorspace; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int subsample; } ;
struct TYPE_8__ {int lock; int mchip_mode; TYPE_1__ params; } ;


 int EINVAL ;
 int MCHIP_HIC_MODE_CONT_COMP ;
 int MCHIP_HIC_MODE_CONT_OUT ;
 scalar_t__ V4L2_FIELD_ANY ;
 scalar_t__ V4L2_FIELD_NONE ;


 TYPE_4__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_s_fmt_vid_cap(struct file *file, void *fh,
        struct v4l2_format *f)
{
 if (f->fmt.pix.pixelformat != 128 &&
     f->fmt.pix.pixelformat != 129)
  return -EINVAL;

 if (f->fmt.pix.field != V4L2_FIELD_ANY &&
     f->fmt.pix.field != V4L2_FIELD_NONE)
  return -EINVAL;

 f->fmt.pix.field = V4L2_FIELD_NONE;
 mutex_lock(&meye.lock);

 if (f->fmt.pix.width <= 320) {
  f->fmt.pix.width = 320;
  f->fmt.pix.height = 240;
  meye.params.subsample = 1;
 } else {
  f->fmt.pix.width = 640;
  f->fmt.pix.height = 480;
  meye.params.subsample = 0;
 }

 switch (f->fmt.pix.pixelformat) {
 case 128:
  meye.mchip_mode = MCHIP_HIC_MODE_CONT_OUT;
  break;
 case 129:
  meye.mchip_mode = MCHIP_HIC_MODE_CONT_COMP;
  break;
 }

 mutex_unlock(&meye.lock);
 f->fmt.pix.bytesperline = f->fmt.pix.width * 2;
 f->fmt.pix.sizeimage = f->fmt.pix.height *
          f->fmt.pix.bytesperline;
 f->fmt.pix.colorspace = 0;
 f->fmt.pix.priv = 0;

 return 0;
}
