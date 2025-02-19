
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sizeimage; int field; int height; int width; scalar_t__ colorspace; scalar_t__ bytesperline; int pixelformat; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {struct cx23885_fh* private_data; } ;
struct TYPE_8__ {int field; } ;
struct cx23885_fh {TYPE_4__ mpegq; struct cx23885_dev* dev; } ;
struct TYPE_7__ {int ts_packet_size; int ts_packet_count; int height; int width; } ;
struct cx23885_dev {TYPE_3__ ts1; } ;


 int V4L2_PIX_FMT_MPEG ;
 int dprintk (int,char*,int ,int ,int ) ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct cx23885_fh *fh = file->private_data;
 struct cx23885_dev *dev = fh->dev;

 f->fmt.pix.pixelformat = V4L2_PIX_FMT_MPEG;
 f->fmt.pix.bytesperline = 0;
 f->fmt.pix.sizeimage =
  dev->ts1.ts_packet_size * dev->ts1.ts_packet_count;
 f->fmt.pix.colorspace = 0;
 f->fmt.pix.width = dev->ts1.width;
 f->fmt.pix.height = dev->ts1.height;
 f->fmt.pix.field = fh->mpegq.field;
 dprintk(1, "VIDIOC_G_FMT: w: %d, h: %d, f: %d\n",
  dev->ts1.width, dev->ts1.height, fh->mpegq.field);
 return 0;
}
