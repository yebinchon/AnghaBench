
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {int * io_allowed; struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct common_obj {int started; int buffer_queue; int lock; } ;
struct channel_obj {scalar_t__ channel_id; struct common_obj* common; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EACCES ;
 int EINVAL ;
 int ERESTARTSYS ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ VPIF_CHANNEL2_VIDEO ;
 scalar_t__ VPIF_CHANNEL3_VIDEO ;
 size_t VPIF_VIDEO_INDEX ;
 int channel2_intr_enable (int ) ;
 int channel3_intr_enable (int ) ;
 int enable_channel2 (int ) ;
 int enable_channel3 (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int videobuf_streamoff (int *) ;
 int vpif_err (char*) ;

__attribute__((used)) static int vpif_streamoff(struct file *file, void *priv,
    enum v4l2_buf_type buftype)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

 if (buftype != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
  vpif_err("buffer type not supported\n");
  return -EINVAL;
 }

 if (!fh->io_allowed[VPIF_VIDEO_INDEX]) {
  vpif_err("fh->io_allowed\n");
  return -EACCES;
 }

 if (!common->started) {
  vpif_err("channel->started\n");
  return -EINVAL;
 }

 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;

 if (buftype == V4L2_BUF_TYPE_VIDEO_OUTPUT) {

  if (VPIF_CHANNEL2_VIDEO == ch->channel_id) {
   enable_channel2(0);
   channel2_intr_enable(0);
  }
  if ((VPIF_CHANNEL3_VIDEO == ch->channel_id) ||
     (2 == common->started)) {
   enable_channel3(0);
   channel3_intr_enable(0);
  }
 }

 common->started = 0;
 mutex_unlock(&common->lock);

 return videobuf_streamoff(&common->buffer_queue);
}
