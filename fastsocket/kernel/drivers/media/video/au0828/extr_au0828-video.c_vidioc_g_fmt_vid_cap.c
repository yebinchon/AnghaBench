
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; int colorspace; int sizeimage; int bytesperline; int pixelformat; int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int frame_size; int bytesperline; int height; int width; } ;


 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_UYVY ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;

 f->fmt.pix.width = dev->width;
 f->fmt.pix.height = dev->height;
 f->fmt.pix.pixelformat = V4L2_PIX_FMT_UYVY;
 f->fmt.pix.bytesperline = dev->bytesperline;
 f->fmt.pix.sizeimage = dev->frame_size;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 f->fmt.pix.field = V4L2_FIELD_INTERLACED;
 return 0;
}
