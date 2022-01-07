
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap24xxcam_fh {int vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int mutex; TYPE_1__* dev; struct file* streaming; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int kobj; } ;


 int EBUSY ;
 int dev_dbg (TYPE_1__*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap24xxcam_sensor_if_enable (struct omap24xxcam_device*) ;
 int sysfs_notify (int *,int *,char*) ;
 int videobuf_streamon (int *) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *fh, enum v4l2_buf_type i)
{
 struct omap24xxcam_fh *ofh = fh;
 struct omap24xxcam_device *cam = ofh->cam;
 int rval;

 mutex_lock(&cam->mutex);
 if (cam->streaming) {
  rval = -EBUSY;
  goto out;
 }

 rval = omap24xxcam_sensor_if_enable(cam);
 if (rval) {
  dev_dbg(cam->dev, "vidioc_int_g_ifparm failed\n");
  goto out;
 }

 rval = videobuf_streamon(&ofh->vbq);
 if (!rval) {
  cam->streaming = file;
  sysfs_notify(&cam->dev->kobj, ((void*)0), "streaming");
 }

out:
 mutex_unlock(&cam->mutex);

 return rval;
}
