
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7146_format {int depth; } ;
struct TYPE_3__ {int width; int height; int sizeimage; int pixelformat; int field; scalar_t__ bytesperline; } ;
struct saa7146_fh {int video_q; TYPE_1__ video_fmt; } ;
struct saa7146_dev {int v4l2_lock; int slock; TYPE_2__* pci; } ;
struct saa7146_buf {int dummy; } ;
struct file {struct saa7146_fh* private_data; } ;
struct TYPE_4__ {int dev; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_ANY ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_BGR24 ;
 struct saa7146_format* saa7146_format_by_fourcc (struct saa7146_dev*,int ) ;
 int video_qops ;
 int videobuf_queue_sg_init (int *,int *,int *,int *,int ,int ,int,struct file*,int *) ;

__attribute__((used)) static int video_open(struct saa7146_dev *dev, struct file *file)
{
 struct saa7146_fh *fh = file->private_data;
 struct saa7146_format *sfmt;

 fh->video_fmt.width = 384;
 fh->video_fmt.height = 288;
 fh->video_fmt.pixelformat = V4L2_PIX_FMT_BGR24;
 fh->video_fmt.bytesperline = 0;
 fh->video_fmt.field = V4L2_FIELD_ANY;
 sfmt = saa7146_format_by_fourcc(dev,fh->video_fmt.pixelformat);
 fh->video_fmt.sizeimage = (fh->video_fmt.width * fh->video_fmt.height * sfmt->depth)/8;

 videobuf_queue_sg_init(&fh->video_q, &video_qops,
       &dev->pci->dev, &dev->slock,
       V4L2_BUF_TYPE_VIDEO_CAPTURE,
       V4L2_FIELD_INTERLACED,
       sizeof(struct saa7146_buf),
       file, &dev->v4l2_lock);

 return 0;
}
