
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vpif_fh {struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct common_obj {int lock; } ;
struct channel_obj {size_t curr_sd_index; struct common_obj* common; } ;
struct TYPE_2__ {int * sd; } ;


 int ERESTARTSYS ;
 size_t VPIF_VIDEO_INDEX ;
 int debug ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int querystd ;
 int v4l2_subdev_call (int ,int ,int ,int *) ;
 int video ;
 int vpif_dbg (int,int ,char*) ;
 TYPE_1__ vpif_obj ;

__attribute__((used)) static int vpif_querystd(struct file *file, void *priv, v4l2_std_id *std_id)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 int ret = 0;

 vpif_dbg(2, debug, "vpif_querystd\n");

 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;


 ret = v4l2_subdev_call(vpif_obj.sd[ch->curr_sd_index], video,
    querystd, std_id);
 if (ret < 0)
  vpif_dbg(1, debug, "Failed to set standard for sub devices\n");

 mutex_unlock(&common->lock);
 return ret;
}
