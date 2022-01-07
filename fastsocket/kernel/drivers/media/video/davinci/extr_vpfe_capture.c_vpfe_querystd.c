
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct vpfe_subdev_info {int grp_id; } ;
struct vpfe_device {int lock; int v4l2_dev; struct vpfe_subdev_info* current_subdev; } ;
struct file {int dummy; } ;


 int debug ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int querystd ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_device_call_until_err (int *,int ,int ,int ,int *) ;
 int video ;
 struct vpfe_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vpfe_querystd(struct file *file, void *priv, v4l2_std_id *std_id)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 struct vpfe_subdev_info *sdinfo;
 int ret = 0;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_querystd\n");

 ret = mutex_lock_interruptible(&vpfe_dev->lock);
 sdinfo = vpfe_dev->current_subdev;
 if (ret)
  return ret;

 ret = v4l2_device_call_until_err(&vpfe_dev->v4l2_dev, sdinfo->grp_id,
      video, querystd, std_id);
 mutex_unlock(&vpfe_dev->lock);
 return ret;
}
