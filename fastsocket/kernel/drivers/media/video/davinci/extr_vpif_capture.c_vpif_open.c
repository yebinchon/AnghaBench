
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpif_params {int dummy; } ;
struct vpif_fh {int initialized; int prio; scalar_t__* io_allowed; struct channel_obj* channel; } ;
struct vpif_capture_config {int subdev_count; int * subdev_info; } ;
struct video_obj {scalar_t__ input_idx; } ;
struct video_device {int dummy; } ;
struct file {struct vpif_fh* private_data; } ;
struct common_obj {int lock; } ;
struct channel_obj {int initialized; int prio; int usrs; int vpifparams; int * curr_subdev_info; struct common_obj* common; struct video_obj video; } ;
struct TYPE_4__ {struct vpif_capture_config* platform_data; } ;
struct TYPE_3__ {scalar_t__* sd; } ;


 int ENOENT ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int V4L2_PRIORITY_UNSET ;
 size_t VPIF_VIDEO_INDEX ;
 int debug ;
 struct vpif_fh* kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_prio_open (int *,int *) ;
 struct video_device* video_devdata (struct file*) ;
 struct channel_obj* video_get_drvdata (struct video_device*) ;
 int vpif_dbg (int,int ,char*) ;
 TYPE_2__* vpif_dev ;
 int vpif_err (char*) ;
 TYPE_1__ vpif_obj ;

__attribute__((used)) static int vpif_open(struct file *filep)
{
 struct vpif_capture_config *config = vpif_dev->platform_data;
 struct video_device *vdev = video_devdata(filep);
 struct common_obj *common;
 struct video_obj *vid_ch;
 struct channel_obj *ch;
 struct vpif_fh *fh;
 int i, ret = 0;

 vpif_dbg(2, debug, "vpif_open\n");

 ch = video_get_drvdata(vdev);

 vid_ch = &ch->video;
 common = &ch->common[VPIF_VIDEO_INDEX];

 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;

 if (((void*)0) == ch->curr_subdev_info) {




  for (i = 0; i < config->subdev_count; i++) {
   if (vpif_obj.sd[i]) {

    ch->curr_subdev_info = &config->subdev_info[i];

    vid_ch->input_idx = 0;
    break;
   }
  }
  if (i == config->subdev_count) {
   vpif_err("No sub device registered\n");
   ret = -ENOENT;
   goto exit;
  }
 }


 fh = kmalloc(sizeof(struct vpif_fh), GFP_KERNEL);
 if (((void*)0) == fh) {
  vpif_err("unable to allocate memory for file handle object\n");
  ret = -ENOMEM;
  goto exit;
 }


 filep->private_data = fh;
 fh->channel = ch;
 fh->initialized = 0;

 if (!ch->initialized) {
  fh->initialized = 1;
  ch->initialized = 1;
  memset(&(ch->vpifparams), 0, sizeof(struct vpif_params));
 }

 ch->usrs++;

 fh->io_allowed[VPIF_VIDEO_INDEX] = 0;

 fh->prio = V4L2_PRIORITY_UNSET;
 v4l2_prio_open(&ch->prio, &fh->prio);
exit:
 mutex_unlock(&common->lock);
 return ret;
}
