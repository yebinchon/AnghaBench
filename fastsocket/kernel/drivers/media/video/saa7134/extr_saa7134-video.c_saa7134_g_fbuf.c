
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_framebuffer {int capability; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {struct v4l2_framebuffer ovbuf; } ;
struct file {int dummy; } ;


 int V4L2_FBUF_CAP_LIST_CLIPPING ;

__attribute__((used)) static int saa7134_g_fbuf(struct file *file, void *f,
    struct v4l2_framebuffer *fb)
{
 struct saa7134_fh *fh = f;
 struct saa7134_dev *dev = fh->dev;

 *fb = dev->ovbuf;
 fb->capability = V4L2_FBUF_CAP_LIST_CLIPPING;

 return 0;
}
