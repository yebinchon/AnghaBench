
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct vpfe_subdev_info {int grp_id; } ;
struct vpfe_device {int lock; int v4l2_dev; scalar_t__ started; struct vpfe_subdev_info* current_subdev; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int core ;
 int debug ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_std ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_device_call_until_err (int *,int ,int ,int ,int ) ;
 int v4l2_err (int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_config_image_format (struct vpfe_device*,int *) ;

__attribute__((used)) static int vpfe_s_std(struct file *file, void *priv, v4l2_std_id *std_id)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 struct vpfe_subdev_info *sdinfo;
 int ret = 0;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_std\n");


 ret = mutex_lock_interruptible(&vpfe_dev->lock);
 if (ret)
  return ret;

 sdinfo = vpfe_dev->current_subdev;

 if (vpfe_dev->started) {
  v4l2_err(&vpfe_dev->v4l2_dev, "streaming is started\n");
  ret = -EBUSY;
  goto unlock_out;
 }

 ret = v4l2_device_call_until_err(&vpfe_dev->v4l2_dev, sdinfo->grp_id,
      core, s_std, *std_id);
 if (ret < 0) {
  v4l2_err(&vpfe_dev->v4l2_dev, "Failed to set standard\n");
  goto unlock_out;
 }
 ret = vpfe_config_image_format(vpfe_dev, std_id);

unlock_out:
 mutex_unlock(&vpfe_dev->lock);
 return ret;
}
