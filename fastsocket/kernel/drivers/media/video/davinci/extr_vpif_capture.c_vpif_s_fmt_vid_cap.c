
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_fh {int initialized; int prio; struct channel_obj* channel; } ;
struct v4l2_pix_format {int dummy; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct common_obj {int lock; struct v4l2_format fmt; scalar_t__ started; } ;
struct channel_obj {scalar_t__ channel_id; int prio; struct common_obj* common; } ;


 int EBUSY ;
 int ERESTARTSYS ;
 scalar_t__ VPIF_CHANNEL0_VIDEO ;
 scalar_t__ VPIF_CHANNEL1_VIDEO ;
 size_t VPIF_VIDEO_INDEX ;
 int debug ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_prio_check (int *,int *) ;
 int vpif_check_format (struct channel_obj*,struct v4l2_pix_format*,int ) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_s_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *fmt)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 struct v4l2_pix_format *pixfmt;
 int ret = 0;

 vpif_dbg(2, debug, "VIDIOC_S_FMT\n");


 if (common->started) {
  vpif_dbg(1, debug, "Streaming is started\n");
  return -EBUSY;
 }

 if ((VPIF_CHANNEL0_VIDEO == ch->channel_id) ||
     (VPIF_CHANNEL1_VIDEO == ch->channel_id)) {
  if (!fh->initialized) {
   vpif_dbg(1, debug, "Channel Busy\n");
   return -EBUSY;
  }
 }

 ret = v4l2_prio_check(&ch->prio, &fh->prio);
 if (0 != ret)
  return ret;

 fh->initialized = 1;

 pixfmt = &fmt->fmt.pix;

 ret = vpif_check_format(ch, pixfmt, 0);

 if (ret)
  return ret;

 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;

 common->fmt = *fmt;
 mutex_unlock(&common->lock);

 return 0;
}
