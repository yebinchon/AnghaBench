
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vpfe_fh {int io_allowed; } ;
struct TYPE_4__ {int field; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct vpfe_device {int io_usrs; scalar_t__ memory; int lock; int buffer_queue; int dma_queue; TYPE_3__ fmt; int irqlock; int v4l2_dev; } ;
struct videobuf_buffer {int dummy; } ;
struct v4l2_requestbuffers {scalar_t__ memory; int type; } ;
struct file {struct vpfe_fh* private_data; } ;


 int EBUSY ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_MEMORY_USERPTR ;
 int debug ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_err (int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int videobuf_queue_dma_contig_init (int *,int *,int *,int *,int ,int ,int,struct vpfe_fh*) ;
 int videobuf_reqbufs (int *,struct v4l2_requestbuffers*) ;
 int vpfe_videobuf_qops ;

__attribute__((used)) static int vpfe_reqbufs(struct file *file, void *priv,
   struct v4l2_requestbuffers *req_buf)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 struct vpfe_fh *fh = file->private_data;
 int ret = 0;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_reqbufs\n");

 if (V4L2_BUF_TYPE_VIDEO_CAPTURE != req_buf->type) {
  v4l2_err(&vpfe_dev->v4l2_dev, "Invalid buffer type\n");
  return -EINVAL;
 }

 if (V4L2_MEMORY_USERPTR == req_buf->memory) {

  v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_reqbufs:"
    " USERPTR IO not supported\n");
  return -EINVAL;
 }

 ret = mutex_lock_interruptible(&vpfe_dev->lock);
 if (ret)
  return ret;

 if (vpfe_dev->io_usrs != 0) {
  v4l2_err(&vpfe_dev->v4l2_dev, "Only one IO user allowed\n");
  ret = -EBUSY;
  goto unlock_out;
 }

 vpfe_dev->memory = req_buf->memory;
 videobuf_queue_dma_contig_init(&vpfe_dev->buffer_queue,
    &vpfe_videobuf_qops,
    ((void*)0),
    &vpfe_dev->irqlock,
    req_buf->type,
    vpfe_dev->fmt.fmt.pix.field,
    sizeof(struct videobuf_buffer),
    fh);

 fh->io_allowed = 1;
 vpfe_dev->io_usrs = 1;
 INIT_LIST_HEAD(&vpfe_dev->dma_queue);
 ret = videobuf_reqbufs(&vpfe_dev->buffer_queue, req_buf);
unlock_out:
 mutex_unlock(&vpfe_dev->lock);
 return ret;
}
