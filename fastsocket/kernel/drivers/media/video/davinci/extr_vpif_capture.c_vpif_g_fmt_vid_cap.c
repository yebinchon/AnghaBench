
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {struct channel_obj* channel; } ;
struct v4l2_format {scalar_t__ type; } ;
struct file {int dummy; } ;
struct common_obj {int lock; struct v4l2_format fmt; } ;
struct channel_obj {struct common_obj* common; } ;


 int EINVAL ;
 int ERESTARTSYS ;
 size_t VPIF_VIDEO_INDEX ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vpif_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *fmt)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];


 if (common->fmt.type != fmt->type)
  return -EINVAL;


 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;

 *fmt = common->fmt;
 mutex_unlock(&common->lock);
 return 0;
}
