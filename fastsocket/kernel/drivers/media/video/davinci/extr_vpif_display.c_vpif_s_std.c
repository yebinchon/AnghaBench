
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vpif_fh {struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct TYPE_12__ {int width; int bytesperline; } ;
struct TYPE_13__ {TYPE_4__ pix; } ;
struct TYPE_14__ {TYPE_5__ fmt; } ;
struct common_obj {int lock; TYPE_6__ fmt; scalar_t__ started; } ;
struct TYPE_10__ {int width; int height; } ;
struct TYPE_11__ {TYPE_2__ std_info; } ;
struct TYPE_9__ {int stdid; } ;
struct channel_obj {size_t channel_id; TYPE_3__ vpifparams; TYPE_1__ video; struct common_obj* common; } ;
struct TYPE_16__ {int* channel_bufsize; } ;
struct TYPE_15__ {int v4l2_dev; } ;


 int DM646X_V4L2_STD ;
 int EBUSY ;
 int EINVAL ;
 int ERESTARTSYS ;
 size_t VPIF_VIDEO_INDEX ;
 TYPE_8__ config_params ;
 int core ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_std ;
 int s_std_output ;
 int v4l2_device_call_until_err (int *,int,int ,int ,int) ;
 int video ;
 int vpif_config_format (struct channel_obj*) ;
 int vpif_err (char*) ;
 scalar_t__ vpif_get_std_info (struct channel_obj*) ;
 TYPE_7__ vpif_obj ;

__attribute__((used)) static int vpif_s_std(struct file *file, void *priv, v4l2_std_id *std_id)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 int ret = 0;

 if (!(*std_id & DM646X_V4L2_STD))
  return -EINVAL;

 if (common->started) {
  vpif_err("streaming in progress\n");
  return -EBUSY;
 }


 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;

 ch->video.stdid = *std_id;

 if (vpif_get_std_info(ch)) {
  vpif_err("Error getting the standard info\n");
  return -EINVAL;
 }

 if ((ch->vpifparams.std_info.width *
  ch->vpifparams.std_info.height * 2) >
  config_params.channel_bufsize[ch->channel_id]) {
  vpif_err("invalid std for this size\n");
  ret = -EINVAL;
  goto s_std_exit;
 }

 common->fmt.fmt.pix.bytesperline = common->fmt.fmt.pix.width;

 vpif_config_format(ch);

 ret = v4l2_device_call_until_err(&vpif_obj.v4l2_dev, 1, video,
      s_std_output, *std_id);
 if (ret < 0) {
  vpif_err("Failed to set output standard\n");
  goto s_std_exit;
 }

 ret = v4l2_device_call_until_err(&vpif_obj.v4l2_dev, 1, core,
       s_std, *std_id);
 if (ret < 0)
  vpif_err("Failed to set standard for sub devices\n");

s_std_exit:
 mutex_unlock(&common->lock);
 return ret;
}
