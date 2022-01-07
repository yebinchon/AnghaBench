
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vpif_fh {int initialized; int prio; struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct common_obj {int lock; scalar_t__ started; } ;
struct TYPE_3__ {int stdid; } ;
struct channel_obj {scalar_t__ channel_id; size_t curr_sd_index; TYPE_1__ video; int prio; struct common_obj* common; } ;
struct TYPE_4__ {int * sd; } ;


 int EBUSY ;
 int EINVAL ;
 int ERESTARTSYS ;
 scalar_t__ VPIF_CHANNEL0_VIDEO ;
 scalar_t__ VPIF_CHANNEL1_VIDEO ;
 size_t VPIF_VIDEO_INDEX ;
 int core ;
 int debug ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_std ;
 int v4l2_prio_check (int *,int *) ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 int vpif_config_format (struct channel_obj*) ;
 int vpif_dbg (int,int ,char*) ;
 int vpif_err (char*) ;
 TYPE_2__ vpif_obj ;
 scalar_t__ vpif_update_std_info (struct channel_obj*) ;

__attribute__((used)) static int vpif_s_std(struct file *file, void *priv, v4l2_std_id *std_id)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 int ret = 0;

 vpif_dbg(2, debug, "vpif_s_std\n");

 if (common->started) {
  vpif_err("streaming in progress\n");
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


 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;

 ch->video.stdid = *std_id;


 if (vpif_update_std_info(ch)) {
  ret = -EINVAL;
  vpif_err("Error getting the standard info\n");
  goto s_std_exit;
 }


 vpif_config_format(ch);


 ret = v4l2_subdev_call(vpif_obj.sd[ch->curr_sd_index], core,
    s_std, *std_id);
 if (ret < 0)
  vpif_dbg(1, debug, "Failed to set standard for sub devices\n");

s_std_exit:
 mutex_unlock(&common->lock);
 return ret;
}
