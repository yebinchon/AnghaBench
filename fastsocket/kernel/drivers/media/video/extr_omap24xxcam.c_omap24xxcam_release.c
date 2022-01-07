
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap24xxcam_fh {int vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {TYPE_2__* sdev; int mutex; int users; int reset_disable; TYPE_1__* dev; struct file* streaming; } ;
struct file {struct omap24xxcam_fh* private_data; } ;
struct TYPE_4__ {int module; } ;
struct TYPE_3__ {int kobj; } ;


 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc (int *) ;
 int flush_scheduled_work () ;
 int kfree (struct omap24xxcam_fh*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap24xxcam_poweron_reset (struct omap24xxcam_device*) ;
 int omap24xxcam_sensor_disable (struct omap24xxcam_device*) ;
 int omap24xxcam_vbq_free_mmap_buffers (int *) ;
 int sysfs_notify (int *,int *,char*) ;
 int videobuf_streamoff (int *) ;

__attribute__((used)) static int omap24xxcam_release(struct file *file)
{
 struct omap24xxcam_fh *fh = file->private_data;
 struct omap24xxcam_device *cam = fh->cam;

 atomic_inc(&cam->reset_disable);

 flush_scheduled_work();


 videobuf_streamoff(&fh->vbq);

 mutex_lock(&cam->mutex);
 if (cam->streaming == file) {
  cam->streaming = ((void*)0);
  mutex_unlock(&cam->mutex);
  sysfs_notify(&cam->dev->kobj, ((void*)0), "streaming");
 } else {
  mutex_unlock(&cam->mutex);
 }

 atomic_dec(&cam->reset_disable);

 omap24xxcam_vbq_free_mmap_buffers(&fh->vbq);







 flush_scheduled_work();

 mutex_lock(&cam->mutex);
 if (atomic_dec_return(&cam->users) == 0) {
  omap24xxcam_sensor_disable(cam);
  omap24xxcam_poweron_reset(cam);
 }
 mutex_unlock(&cam->mutex);

 file->private_data = ((void*)0);

 module_put(cam->sdev->module);
 kfree(fh);

 return 0;
}
