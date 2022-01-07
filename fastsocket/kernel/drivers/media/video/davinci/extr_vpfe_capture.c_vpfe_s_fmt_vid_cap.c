
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_pixel_format {int dummy; } ;
struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct vpfe_device {int lock; struct v4l2_format fmt; int v4l2_dev; scalar_t__ started; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int debug ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_err (int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 struct vpfe_pixel_format* vpfe_check_format (struct vpfe_device*,int *) ;
 int vpfe_config_ccdc_image_format (struct vpfe_device*) ;
 int vpfe_detach_irq (struct vpfe_device*) ;

__attribute__((used)) static int vpfe_s_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *fmt)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 const struct vpfe_pixel_format *pix_fmts;
 int ret = 0;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_fmt_vid_cap\n");


 if (vpfe_dev->started) {
  v4l2_err(&vpfe_dev->v4l2_dev, "Streaming is started\n");
  return -EBUSY;
 }


 pix_fmts = vpfe_check_format(vpfe_dev, &fmt->fmt.pix);

 if (((void*)0) == pix_fmts)
  return -EINVAL;


 ret = mutex_lock_interruptible(&vpfe_dev->lock);
 if (ret)
  return ret;


 vpfe_detach_irq(vpfe_dev);
 vpfe_dev->fmt = *fmt;

 ret = vpfe_config_ccdc_image_format(vpfe_dev);
 mutex_unlock(&vpfe_dev->lock);
 return ret;
}
