
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct vpif_fh {int* io_allowed; int initialized; struct channel_obj* channel; } ;
struct videobuf_buffer {int dummy; } ;
struct v4l2_requestbuffers {int memory; int type; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ field; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; int type; } ;
struct common_obj {int io_usrs; int lock; int buffer_queue; int dma_queue; int memory; int irqlock; TYPE_3__ fmt; } ;
struct channel_obj {scalar_t__ channel_id; struct common_obj* common; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EBUSY ;
 int EINVAL ;
 int ERESTARTSYS ;
 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ V4L2_FIELD_ANY ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_VBI_INTERLACED ;
 scalar_t__ VPIF_CHANNEL2_VIDEO ;
 scalar_t__ VPIF_CHANNEL3_VIDEO ;
 size_t VPIF_VIDEO_INDEX ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int video_qops ;
 int videobuf_queue_dma_contig_init (int *,int *,int *,int *,int ,int,int,struct vpif_fh*) ;
 int videobuf_reqbufs (int *,struct v4l2_requestbuffers*) ;
 int vpif_err (char*) ;

__attribute__((used)) static int vpif_reqbufs(struct file *file, void *priv,
   struct v4l2_requestbuffers *reqbuf)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common;
 enum v4l2_field field;
 u8 index = 0;
 int ret = 0;



 if ((VPIF_CHANNEL2_VIDEO == ch->channel_id)
     || (VPIF_CHANNEL3_VIDEO == ch->channel_id)) {
  if (!fh->initialized) {
   vpif_err("Channel Busy\n");
   return -EBUSY;
  }
 }

 if (V4L2_BUF_TYPE_VIDEO_OUTPUT != reqbuf->type)
  return -EINVAL;

 index = VPIF_VIDEO_INDEX;

 common = &ch->common[index];
 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;

 if (common->fmt.type != reqbuf->type) {
  ret = -EINVAL;
  goto reqbuf_exit;
 }

 if (0 != common->io_usrs) {
  ret = -EBUSY;
  goto reqbuf_exit;
 }

 if (reqbuf->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
  if (common->fmt.fmt.pix.field == V4L2_FIELD_ANY)
   field = V4L2_FIELD_INTERLACED;
  else
   field = common->fmt.fmt.pix.field;
 } else {
  field = V4L2_VBI_INTERLACED;
 }


 videobuf_queue_dma_contig_init(&common->buffer_queue,
         &video_qops, ((void*)0),
         &common->irqlock,
         reqbuf->type, field,
         sizeof(struct videobuf_buffer), fh);


 fh->io_allowed[index] = 1;

 common->io_usrs = 1;

 common->memory = reqbuf->memory;
 INIT_LIST_HEAD(&common->dma_queue);


 ret = videobuf_reqbufs(&common->buffer_queue, reqbuf);

reqbuf_exit:
 mutex_unlock(&common->lock);
 return ret;
}
