
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytesperline; int width; int pixelformat; } ;
struct v4l2_framebuffer {TYPE_1__ fmt; } ;
struct saa7134_format {int depth; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {struct v4l2_framebuffer ovbuf; struct saa7134_format* ovfmt; } ;
struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_RAWIO ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 struct saa7134_format* format_by_fourcc (int ) ;

__attribute__((used)) static int saa7134_s_fbuf(struct file *file, void *f,
     struct v4l2_framebuffer *fb)
{
 struct saa7134_fh *fh = f;
 struct saa7134_dev *dev = fh->dev;
 struct saa7134_format *fmt;

 if (!capable(CAP_SYS_ADMIN) &&
    !capable(CAP_SYS_RAWIO))
  return -EPERM;


 fmt = format_by_fourcc(fb->fmt.pixelformat);
 if (((void*)0) == fmt)
  return -EINVAL;


 dev->ovbuf = *fb;
 dev->ovfmt = fmt;
 if (0 == dev->ovbuf.fmt.bytesperline)
  dev->ovbuf.fmt.bytesperline =
   dev->ovbuf.fmt.width*fmt->depth/8;
 return 0;
}
