
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_device {int lock; int v4l2_dev; int fmt; scalar_t__ started; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int (* set_params ) (void*) ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 long EBUSY ;
 int EINVAL ;

 TYPE_2__* ccdc_dev ;
 int debug ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (void*) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_err (int *,char*) ;
 int v4l2_warn (int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_get_ccdc_image_format (struct vpfe_device*,int *) ;

__attribute__((used)) static long vpfe_param_handler(struct file *file, void *priv,
  int cmd, void *param)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 int ret = 0;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_param_handler\n");

 if (vpfe_dev->started) {

  v4l2_err(&vpfe_dev->v4l2_dev, "device already started\n");
  return -EBUSY;
 }

 ret = mutex_lock_interruptible(&vpfe_dev->lock);
 if (ret)
  return ret;

 switch (cmd) {
 case 128:
  v4l2_warn(&vpfe_dev->v4l2_dev,
     "VPFE_CMD_S_CCDC_RAW_PARAMS: experimental ioctl\n");
  ret = ccdc_dev->hw_ops.set_params(param);
  if (ret) {
   v4l2_err(&vpfe_dev->v4l2_dev,
    "Error in setting parameters in CCDC\n");
   goto unlock_out;
  }
  if (vpfe_get_ccdc_image_format(vpfe_dev, &vpfe_dev->fmt) < 0) {
   v4l2_err(&vpfe_dev->v4l2_dev,
    "Invalid image format at CCDC\n");
   goto unlock_out;
  }
  break;
 default:
  ret = -EINVAL;
 }
unlock_out:
 mutex_unlock(&vpfe_dev->lock);
 return ret;
}
