
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int vfl_type; } ;
struct file {struct cx23885_fh* private_data; } ;
struct cx23885_fh {int radio; int type; int width; int height; int vidq; int fmt; struct cx23885_dev* dev; } ;
struct cx23885_dev {int slock; TYPE_1__* pci; } ;
struct cx23885_buffer {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_BGR24 ;



 int cx23885_video_qops ;
 int dprintk (int,char*,...) ;
 int format_by_fourcc (int ) ;
 struct cx23885_fh* kzalloc (int,int ) ;
 int * v4l2_type_names ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct cx23885_dev* video_drvdata (struct file*) ;
 int videobuf_queue_sg_init (int *,int *,int *,int *,int,int ,int,struct cx23885_fh*,int *) ;

__attribute__((used)) static int video_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct cx23885_dev *dev = video_drvdata(file);
 struct cx23885_fh *fh;
 enum v4l2_buf_type type = 0;
 int radio = 0;

 switch (vdev->vfl_type) {
 case 130:
  type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  break;
 case 128:
  type = V4L2_BUF_TYPE_VBI_CAPTURE;
  break;
 case 129:
  radio = 1;
  break;
 }

 dprintk(1, "open dev=%s radio=%d type=%s\n",
  video_device_node_name(vdev), radio, v4l2_type_names[type]);


 fh = kzalloc(sizeof(*fh), GFP_KERNEL);
 if (((void*)0) == fh)
  return -ENOMEM;

 file->private_data = fh;
 fh->dev = dev;
 fh->radio = radio;
 fh->type = type;
 fh->width = 320;
 fh->height = 240;
 fh->fmt = format_by_fourcc(V4L2_PIX_FMT_BGR24);

 videobuf_queue_sg_init(&fh->vidq, &cx23885_video_qops,
       &dev->pci->dev, &dev->slock,
       V4L2_BUF_TYPE_VIDEO_CAPTURE,
       V4L2_FIELD_INTERLACED,
       sizeof(struct cx23885_buffer),
       fh, ((void*)0));

 dprintk(1, "post videobuf_queue_init()\n");

 return 0;
}
