
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vpfe_subdev_info {int grp_id; } ;
struct vpfe_fh {int prio; scalar_t__ io_allowed; } ;
struct vpfe_device {int lock; int pdev; scalar_t__ initialized; int usrs; int prio; int numbuffers; scalar_t__ io_usrs; int buffer_queue; int v4l2_dev; struct vpfe_subdev_info* current_subdev; scalar_t__ started; } ;
struct file {struct vpfe_fh* private_data; } ;
struct TYPE_4__ {int (* close ) (int ) ;} ;
struct TYPE_6__ {int owner; TYPE_1__ hw_ops; } ;
struct TYPE_5__ {int numbuffers; } ;


 int ENOIOCTLCMD ;
 TYPE_3__* ccdc_dev ;
 TYPE_2__ config_params ;
 int debug ;
 int kfree (struct vpfe_fh*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_stream ;
 int stub1 (int ) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_device_call_until_err (int *,int ,int ,int ,int ) ;
 int v4l2_err (int *,char*) ;
 int v4l2_prio_close (int *,int *) ;
 int video ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int videobuf_streamoff (int *) ;
 int vpfe_detach_irq (struct vpfe_device*) ;
 int vpfe_stop_ccdc_capture (struct vpfe_device*) ;

__attribute__((used)) static int vpfe_release(struct file *file)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 struct vpfe_fh *fh = file->private_data;
 struct vpfe_subdev_info *sdinfo;
 int ret;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_release\n");


 mutex_lock(&vpfe_dev->lock);

 if (fh->io_allowed) {
  if (vpfe_dev->started) {
   sdinfo = vpfe_dev->current_subdev;
   ret = v4l2_device_call_until_err(&vpfe_dev->v4l2_dev,
        sdinfo->grp_id,
        video, s_stream, 0);
   if (ret && (ret != -ENOIOCTLCMD))
    v4l2_err(&vpfe_dev->v4l2_dev,
    "stream off failed in subdev\n");
   vpfe_stop_ccdc_capture(vpfe_dev);
   vpfe_detach_irq(vpfe_dev);
   videobuf_streamoff(&vpfe_dev->buffer_queue);
  }
  vpfe_dev->io_usrs = 0;
  vpfe_dev->numbuffers = config_params.numbuffers;
 }


 vpfe_dev->usrs--;

 v4l2_prio_close(&vpfe_dev->prio, &fh->prio);

 if (!vpfe_dev->usrs) {
  vpfe_dev->initialized = 0;
  if (ccdc_dev->hw_ops.close)
   ccdc_dev->hw_ops.close(vpfe_dev->pdev);
  module_put(ccdc_dev->owner);
 }
 mutex_unlock(&vpfe_dev->lock);
 file->private_data = ((void*)0);

 kfree(fh);
 return 0;
}
