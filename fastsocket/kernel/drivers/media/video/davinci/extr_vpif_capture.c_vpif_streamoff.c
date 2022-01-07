
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_fh {int * io_allowed; struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct common_obj {int buffer_queue; int lock; scalar_t__ started; } ;
struct channel_obj {scalar_t__ channel_id; size_t curr_sd_index; struct common_obj* common; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int * sd; } ;


 int EACCES ;
 int EINVAL ;
 int ENOIOCTLCMD ;
 int ERESTARTSYS ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ VPIF_CHANNEL0_VIDEO ;
 size_t VPIF_VIDEO_INDEX ;
 int channel0_intr_enable (int ) ;
 int channel1_intr_enable (int ) ;
 int debug ;
 int enable_channel0 (int ) ;
 int enable_channel1 (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_stream ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 int video ;
 int videobuf_streamoff (int *) ;
 int vpif_dbg (int,int ,char*) ;
 TYPE_1__ vpif_obj ;

__attribute__((used)) static int vpif_streamoff(struct file *file, void *priv,
    enum v4l2_buf_type buftype)
{

 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 int ret;

 vpif_dbg(2, debug, "vpif_streamoff\n");

 if (buftype != V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  vpif_dbg(1, debug, "buffer type not supported\n");
  return -EINVAL;
 }


 if (!fh->io_allowed[VPIF_VIDEO_INDEX]) {
  vpif_dbg(1, debug, "io not allowed\n");
  return -EACCES;
 }


 if (!common->started) {
  vpif_dbg(1, debug, "channel->started\n");
  return -EINVAL;
 }

 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;


 if (VPIF_CHANNEL0_VIDEO == ch->channel_id) {
  enable_channel0(0);
  channel0_intr_enable(0);
 } else {
  enable_channel1(0);
  channel1_intr_enable(0);
 }

 common->started = 0;

 ret = v4l2_subdev_call(vpif_obj.sd[ch->curr_sd_index], video,
    s_stream, 0);

 if (ret && (ret != -ENOIOCTLCMD))
  vpif_dbg(1, debug, "stream off failed in subdev\n");

 mutex_unlock(&common->lock);

 return videobuf_streamoff(&common->buffer_queue);
}
